import java.nio.file.Files;
import java.nio.file.Paths;
import software.amazon.smithy.model.Model;
import software.amazon.smithy.model.node.Node;
import software.amazon.smithy.model.shapes.ModelSerializer;

/** Assembles a Smithy model directory and writes its JSON AST. */
public class SmithyAst {
    public static void main(String[] args) throws Exception {
        ClassLoader cl = SmithyAst.class.getClassLoader();
        Model model = Model.assembler(cl).discoverModels(cl).addImport(Paths.get(args[0])).assemble().unwrap();
        Files.writeString(Paths.get(args[1]), Node.prettyPrintJson(ModelSerializer.builder().build().serialize(model)));
    }
}
