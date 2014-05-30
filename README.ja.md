SpreeErpVariants
==================

Purpose
-------
* ERPパッケージを関連付けるためのバリアント情報を管理することができます。
* このExtentionはデータを管理するだけで何も同期しません

商品のサイドメニューへのリンクを表示。
![ErpVariants](https://raw.githubusercontent.com/wiki/digitalm/spree_erp_variants/images/erpvariants2.jpg)

「メーカー別情報」 - edit(種類を選択)
![ErpVariants](https://raw.githubusercontent.com/wiki/digitalm/spree_erp_variants/images/erpvariants3.jpg)

管理者は、商品に関連付けるためのメーカーの"製品コード(13桁以内)","在庫数"を管理することができます。
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