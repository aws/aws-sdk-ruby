# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

class RecipesController < ApplicationController

  def index
    @recipes = Recipe.find(:all)
  end

  def show
    @recipe = Recipe[params[:id]]
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(params[:recipe])
    @recipe.author = @remote_user
    if @recipe.save
      flash[:notice] = 'Recipe added.'
      redirect_to recipe_path(@recipe)
    else
      flash.now[:error] = 'Unable to add recipe, see errors below.'
      render :action => 'new'
    end
  end

  def edit
    @recipe = Recipe.by(@remote_user).find(params[:id])
  end

  def update
    @recipe = Recipe[params[:id]]
    if @recipe.update_attributes(params[:recipe])
      flash[:notice] = 'Recipe updated.'
      redirect_to recipe_path(@recipe)
    else
      flash.now[:error] = 'Unable to update recipe, see errors below.'
      render :action => 'edit'
    end
  end

  def destroy
    Recipe.by(@remote_user).find(params[:id]).delete
    flash[:notice] = 'Recipe deleted.'
    redirect_to :action => 'index'
  end

end
