/*
 * Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License"). You
 * may not use this file except in compliance with the License. A copy of
 * the License is located at
 * 
 *     http://aws.amazon.com/apache2.0/
 * 
 * or in the "license" file accompanying this file. This file is
 * distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
 * ANY KIND, either express or implied. See the License for the specific
 * language governing permissions and limitations under the License.
 */

$(".remove_ingredient").live(
    "click",
    function(e) {
        e.preventDefault();
        var target = $(e.target);
        target.parent().slideUp(
            'fast',
            function() {
                target.parent().remove();
            }
        );
    }
);

$(".add_ingredient").live(
    "click",
    function(e) {
        e.preventDefault();
        var ingredient = $('<li/>').append(
            $('<input type="text" name="recipe[ingredients][]" />'),
            "\u00a0",
            $('<a href="#" />')
                .addClass("remove_ingredient")
                .text("Remove")
        );
        ingredient.hide();
        $('#ingredient_list').append(ingredient);
        ingredient.slideDown();
    }
);
