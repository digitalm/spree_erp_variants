SpreeErpVariants
================

Purpose
-------
* Enable to manage Variants information to associate ERP(Enterprise Resource Planning).
* It does not synchronize anything just to manage the data.

Show link "ERP VARIANTS" to Product side menu.
![ErpVariants](https://raw.githubusercontent.com/wiki/digitalm/spree_erp_variants/images/erpvariants2.jpg)

"ERP VARIANTS" show variant list. Select particular variant and edit
![ErpVariants](https://raw.githubusercontent.com/wiki/digitalm/spree_erp_variants/images/erpvariants3.jpg)

Admin can manage Maker Variant informations "Product Code(13 digits within)", "Stock" to associate as ERP Variant.
![ErpVariants](https://raw.githubusercontent.com/wiki/digitalm/spree_erp_variants/images/erpvariants1.jpg)

Installation
------------

Add spree_erp_variants to your Gemfile:

```ruby
gem 'spree_erp_variants'
```

or edge
```ruby
gem 'spree_erp_variants', github: 'digitalm/spree_erp_variants'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g spree_erp_variants:install
```

Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

```shell
bundle
bundle exec rake test_app
bundle exec rspec spec
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'spree_erp_variants/factories'
```

Copyright (c) 2014 [Exsight.inc](http://www.exsight.co.jp/) , released under the New BSD License