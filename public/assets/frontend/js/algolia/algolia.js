(function () {

    var client = algoliasearch("96WHGR885V", "df1f1083a5ec67fcc317799af818ef05")
    var products = client.initIndex('products');
    var enterPressed = false;

    autocomplete('#aa-search-input', {}, [{
        source: autocomplete.sources.hits(products, {
            hitsPerPage: 10
        }),
        displayKey: 'name',
        templates: {
            header: '<div class="aa-suggestions-category">Products</div>',
            suggestion: function (suggestion) {
                const markup = `
                <div class="algolia-result">
                  <span><img src="${window.location.origin}/storage/${suggestion.image}" alt="img" class="algolia-thumb">
                  ${suggestion._highlightResult.name.value}</span>
                  <span>৳${suggestion.price}</span>
                </div>
                <div class="algolia-details">
                  <span>${suggestion._highlightResult.details.value}</span>
                </div>
              `;
                return markup;

                // return '<span>' +
                //   suggestion._highlightResult.name.value + '</span><span>'
                //     + suggestion.price + '</span>';
            },
            empty: function (result) {
                return 'Sorry, we did not find any results for "' + result.query + '"';
            }
        }
    }]).on('autocomplete:selected', function (event, suggestion, dataset) {
        // console.log(suggestion);
        window.location.href = window.location.origin + '/shop/' + suggestion.slug;
        enterPressed = true;
    }).on('keyup', function (event) {
        if (event.keyCode == 13 && !enterPressed) {
            window.location.href = window.location.origin + '/search-algolia?q=' + document.getElementById('aa-search-input').value;
        }
    });

    // var client = algoliasearch('96WHGR885V', 'df1f1083a5ec67fcc317799af818ef05');
    // var index = client.initIndex('products');
    // var enterPressed = false;
    // //initialize autocomplete on search input (ID selector must match)
    // autocomplete('#aa-search-input',
    //     { hint: false }, {
    //         source: autocomplete.sources.hits(index, { hitsPerPage: 10 }),
    //         //value to be displayed in input control after user's suggestion selection
    //         displayKey: 'name',
    //         //hash of templates used when rendering dataset
    //         templates: {
    //             //'suggestion' templating function used to render a single suggestion
    //             suggestion: function (suggestion) {
    //                 const markup = `
    //                     <div class="algolia-result">
    //                         <span>
    //                             <img src="${window.location.origin}/storage/${suggestion.image}" alt="img" class="algolia-thumb">
    //                             ${suggestion._highlightResult.name.value}
    //                         </span>
    //                         <span>$${(suggestion.price / 100).toFixed(2)}</span>
    //                     </div>
    //                     <div class="algolia-details">
    //                         <span>${suggestion._highlightResult.details.value}</span>
    //                     </div>
    //                 `;

    //                 return markup;
    //             },
    //             empty: function (result) {
    //                 return 'Sorry, we did not find any results for "' + result.query + '"';
    //             }
    //         }
    //     }).on('autocomplete:selected', function (event, suggestion, dataset) {
    //         window.location.href = window.location.origin + '/shop/' + suggestion.slug;
    //         enterPressed = true;
    //     }).on('keyup', function(event) {
    //         if (event.keyCode == 13 && !enterPressed) {
    //             window.location.href = window.location.origin + '/search-algolia?q=' + document.getElementById('aa-search-input').value;
    //         }
    //     });


})();
