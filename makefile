install:
	bin/composer install

start:
	php -S localhost:8080

test:
	# cd tst && ../vendor/bin/phpunit
	./vendor/bin/phpunit tst

lint:
	vendor\bin\phpcs --standard=PSR12 lib/
	vendor\bin\phpmd lib/ text cleancode,codesize,design,naming,unusedcode
	vendor\bin\parallel-lint lib/