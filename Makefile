update:
	git submodule update

run-saleor:
	cd saleor && docker-compose up -d

run-storefront:
	cd saleor-storefront && docker-compose up -d

run-dashbaord:
	cd saleor-dashbaord && docker-compose up -d

run:
	run-saleor
	run-storefront
	run-dashbaord

start:
	run

stop:
	docker stop $(docker ps -q)

kill:
	docker kill $(docker ps -q)
