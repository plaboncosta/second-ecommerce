(function() {
    const search = instantsearch({
        appId: "96WHGR885V",
        apiKey: "df1f1083a5ec67fcc317799af818ef05",
        indexName: "products",
        urlSync: true
    });

    search.addWidget(
        instantsearch.widgets.hits({
            container: "#hits",
            templates: {
                empty: "No results",
                item: function(item){
                    return `
                        <div class="result-title">
                            <img src="${window.location.origin}/storage/${item.image}" alt="image" class="algolia-thumb">
                            ${item._highlightResult.name.value}
                        </div>
                        <div class="result-details">
                            ${item._highlightResult.details.value}
                        </div>
                        <div class="result-price">
                            ৳${item.price}
                        </div>
                        
                    `;
                },
                // item:
                //     "<em>Hit {{objectID}}</em>: {{{_highlightResult.name.value}}}"
            }
        })
    );

    // initialize SearchBox
    search.addWidget(
        instantsearch.widgets.searchBox({
            container: "#search-box",
            placeholder: "Search for products"
        })
    );

    // Stats Container
    search.addWidget(
        instantsearch.widgets.stats({
            container: "#stats-container"
        })
    );

    // initialize hits widget
    search.addWidget(
        instantsearch.widgets.hits({
            container: "#hits"
        })
    );

    // initialize pagination
    search.addWidget(
        instantsearch.widgets.pagination({
            container: "#pagination",
            maxPages: 20,
            // default is to scroll to 'body', here we disable this behavior
            scrollTo: false
        })
    );

    search.start();
})();
