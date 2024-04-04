# Library Encoded Archival Description (Lead)

A web utility application to prepare [Encoded Archival Description (EAD)](https://www.loc.gov/ead) XML files for ingestion.

## In a Nutshell

1. Determine the version: EAD3 or 2002
1. Validate the XML
1. Augment with target application specific metadata 
1. Output both versions of the EAD XML file
1. Output application specific ingest directives

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

## Docker Compose Development

After checking out the repo, run `docker-compose build` to build the **app** image. Once the image is built, run `docker-compose up -d` which will create the **app** container. Now run `docker-compose exec -- app bash` to get a bash shell inside the container.

From here on it is the same as above a.k.a. run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. etc...

**NOTE:** If you are using `docker-compose` on a non-linux machine you will need to run `bundle lock --add-platform x86_64-linux` otherwise the action workflows will fail when pushing your branch to GitHub.
## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mlibrary/lead. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/mlibrary/lead/blob/main/CODE_OF_CONDUCT.md).

## Code of Conduct

Everyone interacting in the Lead project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/mlibrary/lead/blob/main/CODE_OF_CONDUCT.md).

## License

The app is available as open source under the terms of the [Apache 2.0 License](https://opensource.org/license/apache-2-0).

## Copyright Notice
Copyright 2024, Regents of the University of Michigan.
