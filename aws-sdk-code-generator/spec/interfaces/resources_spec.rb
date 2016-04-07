require 'spec_helper'

describe 'Interface' do

  before(:all) do
    # TODO : support Aws.config[:sample] = { ... }
    # TODO : ec2 and s3 batch operations require aliases for backwards compatability
    @tmpdir = SpecHelper.generate_service(['Sample'], multiple_files: true)
  end

  after(:all) do
    SpecHelper.cleanup_service(@tmpdir)
  end

  let(:client) { Sample::Client.new(stub_responses: true) }

  describe 'Resource Interfaces' do

    describe 'Service ::Resource Class' do

      describe '#client' do

        it 'constructs a default client' do
          client = double('client')
          expect(Sample::Client).to receive(:new).with({}).and_return(client)
          svc = Sample::Resource.new
          expect(svc.client).to be(client)
        end

        it 'constructs a client using options given' do
          client = double('client')
          expect(Sample::Client).to receive(:new).
            with(region: 'us-west-2').
            and_return(client)
          svc = Sample::Resource.new(region: 'us-west-2')
          expect(svc.client).to be(client)
        end

        it 'accepts a client' do
          client = double('client')
          svc = Sample::Resource.new(client: client)
          expect(svc.client).to be(client)
        end

      end

      describe 'actions' do

        it 'supports actions returning a client response' do
          data = client.stub_data(:get_band)
          expect(client).to receive(:get_band).with(foo:'bar').
            and_return(double('resp', data: data))
          svc = Sample::Resource.new(client: client)
          expect(svc.get_summary(foo: 'bar')).to be(data)
        end

        it 'supports actions returning another resource' do
          data = client.stub_data(:create_band, band:{band_name:'abc'})
          expect(client).to receive(:create_band).with(band_name:'abc').
            and_return(double('resp', data: data))
          svc = Sample::Resource.new(client: client)
          band = svc.create_band(band_name:'abc')
          expect(band).to be_kind_of(Sample::Band)
          expect(band.client).to be(client)
          expect(band.name).to eq('abc')
        end

        it 'supports actions returning a list of resources' do
          client.stub_responses(:book_concerts, concerts: [
            { concert_id: 'id-1' },
            { concert_id: 'id-2' }
          ])
          band = Sample::Resource.new(client: client)
          concerts = band.book_concerts
          expect(concerts).to be_kind_of(Sample::Concert::Collection)
          expect(concerts.map(&:id)).to eq(['id-1', 'id-2'])
          expect(concerts.size).to eq(2)
          expect(concerts.length).to eq(2) # length is an alias of size
        end

      end

      describe 'has associations' do

        it 'supports has associations with identifier given as input' do
          svc = Sample::Resource.new(client: client)
          band = svc.band('band-name')
          expect(band).to be_kind_of(Sample::Band)
          expect(band.client).to be(svc.client)
          expect(band.name).to eq('band-name')
          expect(band.data_loaded?).to be(false)
        end

        it 'supports has associations without input' do
          svc = Sample::Resource.new(client: client)
          res = svc.empty_resource
          expect(res).to be_kind_of(Sample::EmptyResource)
          expect(res.client).to be(svc.client)
        end

        it 'supports nullable associations that return nil' do
          data = double('band-data', fan_club_president: nil)
          band = Sample::Band.new(name: 'band-name', data: data, client: client)
          expect(band.fan_club_president).to be(nil)
        end

        it 'supports nullable associations that return a value' do
          data = double('band-data', fan_club_president: 'fan-name')
          band = Sample::Band.new(name: 'band-name', data: data, client: client)
          expect(band.fan_club_president).to be_kind_of(Sample::Fan)
          expect(band.fan_club_president.name).to eq('fan-name')
          expect(band.fan_club_president.client).to be(client)
        end

      end

      describe 'hasMany associations' do

        it 'returns a collection without making an API call' do
          client = double('client') # expects no method calls
          svc = Sample::Resource.new(client: client)
          bands = svc.bands
          expect(bands).to be_kind_of(Sample::Band::Collection)
          expect(bands.size).to be(nil) # size not known - requires enumeration
          expect(bands.length).to be(nil) # alias of size
        end

        it 'enumerates response pages when enumerating the collection' do
          client.stub_responses(:list_bands, [
            { bands: [{ band_name: 'band-1' }], next_token: 'token' },
            { bands: [{ band_name: 'band-2' }] },
          ])
          svc = Sample::Resource.new(client: client)
          bands = svc.bands.to_a # force enumeration
          expect(bands.size).to eq(2)
          expect(bands[0]).to be_kind_of(Sample::Band)
          expect(bands[0].name).to eq('band-1')
          expect(bands[0].client).to be(client)
          expect(bands[0].data_loaded?).to be(true)
          expect(bands[1]).to be_kind_of(Sample::Band)
          expect(bands[1].name).to eq('band-2')
          expect(bands[1].client).to be(client)
          expect(bands[1].data_loaded?).to be(true)
        end

        it 'supports operations that are not paginated' do
          client.stub_responses(:list_top_bands, top_five: { band_names: %w(
            band-1 band-2 band-3 band-4 band-5
          )})
          svc = Sample::Resource.new(client: client)
          bands = svc.top_five_bands.to_a # force enumeration
          expect(bands.size).to eq(5)
          expect(bands[0]).to be_kind_of(Sample::Band)
          expect(bands[0].name).to eq('band-1')
          expect(bands[0].client).to be(client)
          expect(bands[0].data_loaded?).to be(false)
          expect(bands[4]).to be_kind_of(Sample::Band)
          expect(bands[4].name).to eq('band-5')
          expect(bands[4].client).to be(client)
          expect(bands[4].data_loaded?).to be(false)
        end

      end
    end
  end

  describe 'Resource Classes' do

    it 'defines a class for each resource type' do
      expect(Sample.constants.sort).to eq([
        # constants for every service
        :Client,
        :ClientApi,
        :Errors,
        :Types,
        :Resource,
        :Waiters,
        # service specific resource classes
        :Band,
        :Concert,
        :EmptyResource,
        :Fan,
        :Tag,
        :Ticket,
        :TicketReservation,
      ].sort)
    end

    describe '#initialize' do

      it 'accepts identifiers as positional arguments' do
        band = Sample::Band.new('band-name')
        expect(band.name).to eq('band-name')
      end

      it 'accepts identifiers as keyword arguments' do
        band = Sample::Band.new(name:'band-name')
        expect(band.name).to eq('band-name')
      end

      it 'aliases identifiers when present in data' do
        band = Sample::Band.new(name:'band-name')
        expect(band.band_name).to eq('band-name')
      end

      it 'supports resources with numeric identifiers' do
        ticket = Sample::Ticket.new(number: 123456)
        expect(ticket.number).to eq(123456)
        expect(ticket.ticket_number).to eq(123456)
        expect {
          Sample::Ticket.new('123456')
        }.to raise_error(ArgumentError, "expected :number to be a Integer, got String")
      end

      it 'raises an ArgumentError when an identifier is missing' do
        expect {
          Sample::Band.new
        }.to raise_error(ArgumentError, 'missing required option :name')
      end

      it 'supports a resource that has no identifiers' do
        res = Sample::EmptyResource.new
        expect(res.identifiers).to eq({})
      end

    end

    describe '#client' do

      it 'constructs an instance of Client by default' do
        band = Sample::Band.new('name')
        expect(band.client).to be_kind_of(Sample::Client)
      end

      it 'constructs a client from options' do
        client = double('client')
        expect(Sample::Client).to receive(:new).
          with(region:'us-west-2').
          and_return(client)
        band = Sample::Band.new(name:'name', region: 'us-west-2')
        expect(band.client).to be(client)
      end

      it 'passes extra options to the client constructor' do
        client = double('client')
        expect(Sample::Client).to receive(:new).with(foo:'bar').and_return(client)
        band = Sample::Band.new(name:'name', data: double('data'), foo: 'bar')
        expect(band.client).to be(client)
      end

      it 'accepts a client option' do
        client = double('client')
        band = Sample::Band.new('name', client: client)
        expect(band.client).to be(client)
      end

    end

    describe '#load, #reload, #data, #data_loaded? methods' do

      describe 'shape and load' do

        it '#load hydrates the resource' do
          expect(client).to receive(:get_ticket).
            twice.
            with(ticket_number: 1).
            and_return(client.stub_data(:get_ticket, ticket: {
              ticket_number: 1,
              purchase_price: 150,
            }))
          ticket = Sample::Ticket.new(1, client: client)
          ticket.load
          ticket.reload # load is aliased as #reload
          expect(ticket.purchase_price).to eq(150)
        end

        it '#data loads the resource only once returning the cached data' do
          resp = client.stub_data(:get_ticket, ticket:{purchase_price:10})
          ticket_data = resp.ticket
          expect(client).to receive(:get_ticket).once.and_return(resp)
          ticket = Sample::Ticket.new(1, client: client)
          expect(ticket.data).to be(ticket_data)
          expect(ticket.data).to be(ticket_data)
          expect(ticket.purchase_price).to eq(10)
          expect(ticket.purchase_price).to eq(10)
        end

        it '#data_loaded? returns false until loaded' do
          resp = client.stub_data(:get_ticket, ticket:{})
          expect(client).to receive(:get_ticket).once.and_return(resp)
          ticket = Sample::Ticket.new(1, client: client)
          expect(ticket.data_loaded?).to be(false)
          ticket.purchase_price # trigger load implicitly
          expect(ticket.data_loaded?).to be(true)
        end

        it 'uses data as provided to the constructor' do
          data = client.stub_data(:get_ticket, ticket:{purchase_price:10}).ticket
          expect(client).not_to receive(:get_ticket)
          ticket = Sample::Ticket.new(123, data: data)
          expect(ticket.data).to be(data)
          expect(ticket.data_loaded?).to be(true)
          expect(ticket.purchase_price).to be(10)
        end

      end

      describe 'shape without load' do

        it '#load raises an error' do
          ticket = Sample::TicketReservation.new(1, client: client)
          expect {
            ticket.load
          }.to raise_error(Sample::Errors::ResourceNotLoadable)
        end

        it '#data returns the shape when present' do
          data = Sample::Types::Ticket.new
          res = Sample::TicketReservation.new(123, data: data)
          expect(res.data).to be(data)
        end

        it '#data raises an error when shape not present' do
          expect {
            Sample::TicketReservation.new(123).data
          }.to raise_error(Sample::Errors::ResourceNotLoadable)
        end

        it '#data_loaded? returns true if data is present' do
          res = Sample::TicketReservation.new(123)
          expect(res.data_loaded?).to be(false)
          res = Sample::TicketReservation.new(123, data: double('data'))
          expect(res.data_loaded?).to be(true)
        end

      end

      describe 'no shape' do

        it '#load raises an error' do
          res = Sample::EmptyResource.new
          expect {
            res.load
          }.to raise_error(Sample::Errors::ResourceNotLoadable)
        end

        it '#data returns an empty shape' do
          res = Sample::EmptyResource.new
          expect(res.data).to be_kind_of(Aws::EmptyStructure)
        end

        it '#data_loaded? returns true' do
          res = Sample::EmptyResource.new
          expect(res.data_loaded?).to be(true)
        end

      end
    end

    describe 'attributes' do

      it 'defines a read-only method for each identifier' do
        band = Sample::Band.new(name:'name')
        expect(band).to respond_to(:name)
        expect(band).not_to respond_to(:name=)
      end

      it 'defines a read-only method for each data shape member' do
        band = Sample::Band.new(name:'name', data: double('data', year_established:2000))
        expect(band).to respond_to(:band_name)
        expect(band).not_to respond_to(:band_name=)
        expect(band).to respond_to(:year_established)
        expect(band).not_to respond_to(:year_established=)
        expect(band.year_established).to eq(2000)
      end

      it 'returns all identifiers as a hash' do
        # NOTE: this method is deprecated
        band = Sample::Band.new(name:'name')
        expect(band.identifiers).to eq(name:'name')
      end

    end

    describe '#exists?' do

      it 'does not responds to #exists? if there is no Exists waiter' do
        concert = Sample::Concert.new(id:'123', client: client)
        expect(concert).not_to respond_to(:exists?)
      end

      it 'responds to #exists? if there is an Exists waiter' do
        band = Sample::Band.new(name: 'name', client: client)
        expect(band).to respond_to(:exists?)
      end

      it 'polls the waiter once and returns the result' do
        # failure
        client.stub_responses(:get_band, 'ResourceNotFound')
        band = Sample::Band.new(name: 'name', client: client)
        expect(band.exists?).to be(false)
        # success
        client.stub_responses(:get_band, band: {})
        band = Sample::Band.new(name: 'name', client: client)
        expect(band.exists?).to be(true)
      end

      it 'raises unexpected errors' do
        # the error raised here is nonsensical, but it is
        # not handled by the waiter
        client.stub_responses(:get_band, 'BandAlreadyExists')
        band = Sample::Band.new(name: 'name', client: client)
        expect {
          band.exists?
        }.to raise_error(Sample::Errors::BandAlreadyExists)
      end

    end

    describe 'actions' do

      it 'supports actions returning a client response' do
        data = client.stub_data(:update_band, {})
        expect(client).to receive(:update_band).
          with(band_name: 'name', bio: 'updated-band-bio').
          and_return(double('resp', data: data))
        band = Sample::Band.new(name:'name', client: client)
        expect(band.update(bio: 'updated-band-bio')).to be(data)
      end

      it 'supports actions returning another resource' do
        data = client.stub_data(:create_band, band: {
          band_name: 'Horton Heard a Who',
          cover_band_for: 'The Who',
        })
        expect(client).to receive(:create_band).
          with(band_name: 'Horton Heard a Who', cover_band_for: 'The Who').
          and_return(double('resp', data: data))

        band = Sample::Band.new(name:'The Who', client: client)
        cover_band = band.create_cover_band(band_name: 'Horton Heard a Who')
        expect(cover_band.name).to eq('Horton Heard a Who')
        expect(cover_band.cover_band_for).to eq('The Who')
        expect(cover_band.client).to be(band.client)
      end

      it 'supports actions returning a list of resources' do
        client.stub_responses(:book_concerts, concerts: [
          { concert_id: 'id-1' },
          { concert_id: 'id-2' }
        ])
        band = Sample::Band.new(name:'name', client: client)
        concerts = band.book_concerts
        expect(concerts).to be_kind_of(Sample::Concert::Collection)
        expect(concerts.map(&:id)).to eq(['id-1', 'id-2'])
        expect(concerts.size).to eq(2)
        expect(concerts.length).to eq(2) # length is an alias of size
      end

      it 'supports actions that construct a batch from request params' do
        expect(client).to receive(:create_tags).with(
          resources: ['band-name'],
          tags: [
            { key: 'tag-1-key', value: 'tag-1-value' },
            { key: 'tag-2-key', value: 'tag-2-value' },
          ]
        ).and_return(double('resp', data: Aws::EmptyStructure.new))
        band = Sample::Band.new(name:'band-name', client: client)
        tags = band.create_tags(tags: [
          { key: 'tag-1-key', value: 'tag-1-value' },
          { key: 'tag-2-key', value: 'tag-2-value' },
        ])
        expect(tags).to be_kind_of(Sample::Tag::Collection)
        expect(tags.size).to be(2)
        tags = tags.to_a
        expect(tags[0]).to be_kind_of(Sample::Tag)
        expect(tags[0].resource_id).to eq('band-name')
        expect(tags[0].key).to eq('tag-1-key')
        expect(tags[0].value).to eq('tag-1-value')
        expect(tags[0].client).to be(band.client)
        expect(tags[1]).to be_kind_of(Sample::Tag)
        expect(tags[1].resource_id).to eq('band-name')
        expect(tags[1].key).to eq('tag-2-key')
        expect(tags[1].value).to eq('tag-2-value')
        expect(tags[1].client).to be(band.client)
      end

    end

    describe 'has associations' do

      it 'supports has associations with identifier given as input' do
        band = Sample::Band.new(name: 'band-name', client: client)
        fan = band.fan('fan-name')
        expect(fan).to be_kind_of(Sample::Fan)
        expect(fan.favorite_band_name).to eq('band-name')
        expect(fan.name).to eq('fan-name')
        expect(fan.client).to be(fan.client)
        expect(fan.data_loaded?).to be(false)
      end

      it 'supports has associations without input' do
        band_data = double('band-data', biggest_fans: [
          double('fan', name: 'fan-1', age: 20),
          double('fan', name: 'fan-2', age: 21),
        ])
        band = Sample::Band.new(name: 'band-name', data: band_data, client: client)
        fan = band.biggest_fan
        expect(fan).to be_kind_of(Sample::Fan)
        expect(fan.name).to eq('fan-1')
        expect(fan.data_loaded?).to be(true)
        expect(fan.age).to eq(20)
        expect(fan.client).to be(band.client)
      end

      it 'supports plural has associations' do
        band_data = double('band-data', biggest_fans: [
          double('fan', name: 'fan-1', age: 20),
          double('fan', name: 'fan-2', age: 21),
        ])
        band = Sample::Band.new(name: 'band-name', data: band_data, client: client)
        fans = band.fan_club_leaders
        expect(fans).to be_kind_of(Sample::Fan::Collection)
        fans = fans.to_a # force enumeration
        expect(fans.size).to eq(2) # size must be known
        expect(fans[0]).to be_kind_of(Sample::Fan)
        expect(fans[0].name).to eq('fan-1')
        expect(fans[0].data_loaded?).to be(true)
        expect(fans[0].age).to eq(20)
        expect(fans[0].client).to be(band.client)
        expect(fans[1]).to be_kind_of(Sample::Fan)
        expect(fans[1].name).to eq('fan-2')
        expect(fans[1].data_loaded?).to be(true)
        expect(fans[1].age).to eq(21)
        expect(fans[1].client).to be(band.client)
      end

    end

    describe 'hasMany associations' do

      it 'returns a collection without making an API call' do
        client = double('client') # expects no method calls
        band = Sample::Band.new(name: 'name', client: client)
        fans = band.fans
        expect(fans).to be_kind_of(Sample::Fan::Collection)
        expect(fans.size).to be(nil) # size not known - requires enumeration
        expect(fans.length).to be(nil) # alias of size
      end

      it 'enumerates response pages when enumerating the collection' do
        client.stub_responses(:list_fans, [
          { fans: [{ name: 'fan-1' }], next_token: 'token' },
          { fans: [{ name: 'fan-2' }] },
        ])
        expect(client).to receive(:list_fans).
          with(favorite_band_name:'name').
          and_call_original
        band = Sample::Band.new(name: 'name', client: client)
        fans = band.fans.to_a # force enumeration
        expect(fans.size).to eq(2)
        expect(fans[0]).to be_kind_of(Sample::Fan)
        expect(fans[0].name).to eq('fan-1')
        expect(fans[0].client).to be(client)
        expect(fans[0].data_loaded?).to be(true)
        expect(fans[1]).to be_kind_of(Sample::Fan)
        expect(fans[1].name).to eq('fan-2')
        expect(fans[1].client).to be(client)
        expect(fans[1].data_loaded?).to be(true)
      end

      it 'supports complex filters' do
        client.stub_responses(:list_fans, { fans: [
          { name: 'fan-1' },
          { name: 'fan-2' },
        ]})
        expect(client).to receive(:list_fans).with(
          filters: [
            { name: 'favorite-band-name', values: ['band-name'] },
            { name: 'fandom-level', values: ['AAA'] },
          ],
          limit: 5
        ).and_call_original
        band = Sample::Band.new(name: 'band-name', client: client)
        band.biggest_fans.to_a # force enumeration
      end

      it 'supports complex filters' do
        client.stub_responses(:list_fans, { fans: [
          { name: 'fan-1' },
          { name: 'fan-2' },
        ]})
        expect(client).to receive(:list_fans).with(
          filters: [
            { name: 'favorite-band-name', values: ['band-name'] },
            { name: 'fandom-level', values: ['AAA'] },
          ],
          limit: 5
        ).and_call_original
        band = Sample::Band.new(name: 'band-name', client: client)
        band.biggest_fans.to_a # force enumeration
      end

      it 'deep merges incoming params with fixed params' do
        # this example is very similar to how
        # Aws::EC2::Client#describe_instances has a list of filter objets
        # with keys and values. The has many association requires lists
        # to be appended to each other for a proper merge.
        expect(client).to receive(:list_fans).with(
          filters: [
            { name: 'favorite-band-name', values: ['band-name'] },
            { name: 'fandom-level', values: ['AAA'] },
            { name: 'location', values: ['Seattle', 'Tacoma'] },
          ],
          limit: 5
        ).and_call_original
        band = Sample::Band.new(name: 'band-name', client: client)
        band.biggest_fans(
          filters: [
            { name: 'location', values: %w(Seattle Tacoma) }
          ]
        ).to_a # force enumeration
      end

    end

    describe 'waiters' do

      it 'defines a single #wait_until_* method for each named waiter' do
        band = Sample::Band.new(name:'band-name')
        expect(band).to respond_to(:wait_until_exists)
        expect(band).to respond_to(:wait_until_famous)
      end

      it 'invokes the appropriate waiter' do
        waiter = double('waiter')
        expect(Sample::Waiters::BandExists).to receive(:new).
          with(client: client).
          and_return(waiter)
        expect(waiter).to receive(:wait).with(band_name: 'band-name')
        band = Sample::Band.new(name: 'band-name', client: client)
        band.wait_until_exists
      end

      it 'accepts configuration options' do
        waiter = double('waiter')
        expect(Sample::Waiters::BandExists).to receive(:new).with(
          client: client,
          max_attempts: 2,
          delay: 2,
        ).and_return(waiter)
        expect(waiter).to receive(:wait).with(band_name: 'band-name')
        band = Sample::Band.new(name: 'band-name', client: client)
        band.wait_until_exists(max_attempts: 2, delay: 2)
      end

      it 'returns a new hydrated resource if path is given' do
        client.stub_responses(:get_band, band: { famous: true })
        band = Sample::Band.new(name: 'band-name', client: client)
        famous_band = band.wait_until_famous
        expect(famous_band).to be_kind_of(Sample::Band)
        expect(famous_band.client).to be(client)
        expect(famous_band.data_loaded?).to be(true)
      end

      it 'returns a new unhydrated resource if path is not given' do
        waiter = double('waiter')
        expect(Sample::Waiters::BandExists).to receive(:new).
          with(client: client).
          and_return(waiter)
        expect(waiter).to receive(:wait).with(band_name: 'band-name')
        band = Sample::Band.new(name: 'band-name', client: client)
        result = band.wait_until_exists
        expect(result).to be_kind_of(Sample::Band)
        expect(result.client).to be(client)
        expect(result.data_loaded?).to be(false)
      end

    end

    describe 'batchActions' do

      it 'supports one request per batch'

      it 'raises for actions that model a resource'

      it 'suffixes dangerous operations with a bang!'

      it 'validates batch args'

    end
  end
end
