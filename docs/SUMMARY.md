# Table of contents

* [Wire-docs](README.md)
* [diagrams](diagrams/README.md)
* [src](src/README.md)
  * [index](src/index.md)
  * [Writing HTML templates](src/\_templates/README.md)
  * [changelog](src/changelog/README.md)
    * [changelog](src/changelog/changelog.md)
    * [Releases](src/changelog/index.md)
  * [developer](src/developer/README.md)
    * [Notes for developers](src/developer/index.md)
    * [developer](src/developer/developer/README.md)
      * [API versioning](src/developer/developer/api-versioning.md)
      * [How to build wire-server](src/developer/developer/building.md)
      * [Writing code interacting with cassandra](src/developer/developer/cassandra-interaction.md)
      * [Changelog](src/developer/developer/changelog.md)
      * [Coding conventions](src/developer/developer/coding-conventions.md)
      * [Dependencies](src/developer/developer/dependencies.md)
      * [Editor setup](src/developer/developer/editor-setup.md)
      * [Features](src/developer/developer/features.md)
      * [Federation API Conventions](src/developer/developer/federation-api-conventions.md)
      * [Federation Design Aspects](src/developer/developer/federation-design-aspects.md)
      * [Developer how-to's](src/developer/developer/how-to.md)
      * [Developer](src/developer/developer/index.md)
      * [Refactoring galley to support large conversations](src/developer/developer/large-conversations.md)
      * [Linting](src/developer/developer/linting.md)
      * [OpenTelemetry Instrumentation](src/developer/developer/open-telemetry.md)
      * [PR Guidelines](src/developer/developer/pr-guidelines.md)
      * [Internal processes](src/developer/developer/processes.md)
      * [Servant](src/developer/developer/servant.md)
      * [Testing the wire-server Haskell code base](src/developer/developer/testing.md)
      * [Upgrading](src/developer/developer/upgrading.md)
      * [scim](src/developer/developer/scim/README.md)
        * [Storing SCIM-related data](src/developer/developer/scim/storage.md)
    * [reference](src/developer/reference/README.md)
      * [Config Options](src/developer/reference/config-options.md)
      * [Creating and populating conversations](src/developer/reference/conversation.md)
      * [Maintaining ElasticSearch](src/developer/reference/elastic-search.md)
      * [ElasticSearch migration instructions for release 2021-02-16](src/developer/reference/elasticsearch-migration-2021-02-16.md)
      * [Reference](src/developer/reference/index.md)
      * [Make docker and QEMU](src/developer/reference/make-docker-and-qemu.md)
      * [OAuth](src/developer/reference/oauth.md)
      * [RabbitMQ Consumer](src/developer/reference/rabbitmq-consumer.md)
      * [Spar braindump](src/developer/reference/spar-braindump.md)
      * [provisioning](src/developer/reference/provisioning/README.md)
        * [SCIM tokens](src/developer/reference/provisioning/scim-token.md)
      * [team](src/developer/reference/team/README.md)
        * [Legal hold](src/developer/reference/team/legalhold.md)
      * [user](src/developer/reference/user/README.md)
        * [User Activation](src/developer/reference/user/activation.md)
        * [connection](src/developer/reference/user/connection.md)
        * [User Registration](src/developer/reference/user/registration.md)
        * [User Rich info](src/developer/reference/user/rich-info.md)
  * [security-responses](src/security-responses/README.md)
    * [2021-12 - log4shell](src/security-responses/2021-12-15\_log4shell.md)
    * [2022-02 - CVE-2021-44521 (Cassandra "user defined functions")](src/security-responses/2022-02-21\_cve-2021-44521.md)
    * [2022-05-23 - wire.com website outage](src/security-responses/2022-05-23\_website\_outage.md)
    * [2022-11-01 - High Severity Vulnerability in OpenSSL](src/security-responses/2022-11-01\_openssl.md)
    * [2023-01-04 - Outage of wire.com caused by a DoS attack](src/security-responses/2023-01-04\_website\_outage.md)
    * [2023-01-19 - Security Advisory: HTML Injection in wire.com](src/security-responses/2023-01-19\_html\_injection.md)
    * [index](src/security-responses/index.md)
  * [understand](src/understand/README.md)
    * [Block personal user creation](src/understand/block-user-creation.md)
    * [Classified Domains](src/understand/classified-domains.md)
    * [configure-federation](src/understand/configure-federation.md)
    * [crypto-libs](src/understand/crypto-libs.md)
    * [helm](src/understand/helm.md)
    * [index](src/understand/index.md)
    * [Installing and setting up Legal Hold](src/understand/legalhold.md)
    * [Minio](src/understand/minio.md)
    * [mls](src/understand/mls.md)
    * [overview](src/understand/overview.md)
    * [restund](src/understand/restund.md)
    * [searchability](src/understand/searchability.md)
    * [sft](src/understand/sft.md)
    * [Server and team feature settings](src/understand/team-feature-settings.md)
    * [api-client-perspective](src/understand/api-client-perspective/README.md)
      * [Authentication](src/understand/api-client-perspective/authentication.md)
      * [Wire-server API documentation](src/understand/api-client-perspective/index.md)
      * [swagger](src/understand/api-client-perspective/swagger.md)
    * [associate](src/understand/associate/README.md)
      * [How to connect the desktop application to a custom backend](src/understand/associate/custom-backend-for-desktop-client.md)
      * [Custom root certificates](src/understand/associate/custom-certificates.md)
      * [Using a Deep Link to connect an App to a Custom Backend](src/understand/associate/deeplink.md)
      * [Connecting Wire Clients](src/understand/associate/index.md)
      * [Redirecting email domains from cloud (or any other backend) to a custom backend](src/understand/associate/sso-domain-redirect.md)
    * [federation](src/understand/federation/README.md)
      * [api](src/understand/federation/api.md)
      * [architecture](src/understand/federation/architecture.md)
      * [backend-communication](src/understand/federation/backend-communication.md)
      * [Federated API calls by client API end-point (generated)](src/understand/federation/fedcalls.md)
      * [index](src/understand/federation/index.md)
    * [notes](src/understand/notes/README.md)
      * [port-ranges](src/understand/notes/port-ranges.md)
    * [single-sign-on](src/understand/single-sign-on/README.md)
      * [generic-setup](src/understand/single-sign-on/generic-setup.md)
      * [index](src/understand/single-sign-on/index.md)
      * [trouble-shooting](src/understand/single-sign-on/trouble-shooting.md)
      * [adfs](src/understand/single-sign-on/adfs/README.md)
        * [How to set up SSO integration with ADFS](src/understand/single-sign-on/adfs/main.md)
      * [azure](src/understand/single-sign-on/azure/README.md)
        * [How to set up SSO integration with Microsoft Azure](src/understand/single-sign-on/azure/main.md)
      * [centrify](src/understand/single-sign-on/centrify/README.md)
        * [How to set up SSO integration with Centrify](src/understand/single-sign-on/centrify/main.md)
      * [okta](src/understand/single-sign-on/okta/README.md)
        * [main](src/understand/single-sign-on/okta/main.md)
      * [understand](src/understand/single-sign-on/understand/README.md)
        * [Single sign-on and user provisioning](src/understand/single-sign-on/understand/main.md)
  * [how-to](src/how-to/README.md)
    * [administrate](src/how-to/administrate/README.md)
      * [Backup and disaster recovery](src/how-to/administrate/backup-disaster-recovery.md)
      * [Cassandra](src/how-to/administrate/cassandra.md)
      * [Elasticsearch](src/how-to/administrate/elasticsearch.md)
      * [Etcd](src/how-to/administrate/etcd.md)
      * [General - Linux](src/how-to/administrate/general-linux.md)
      * [Administration](src/how-to/administrate/index.md)
      * [Minio](src/how-to/administrate/minio.md)
      * [Operational procedures](src/how-to/administrate/operations.md)
      * [Restund (TURN)](src/how-to/administrate/restund.md)
      * [users](src/how-to/administrate/users.md)
      * [kubernetes](src/how-to/administrate/kubernetes/README.md)
        * [Kubernetes](src/how-to/administrate/kubernetes/index.md)
        * [certificate-renewal](src/how-to/administrate/kubernetes/certificate-renewal/README.md)
          * [Certificate renewal](src/how-to/administrate/kubernetes/certificate-renewal/index.md)
          * [How to renew certificates on kubernetes 1.14.x](src/how-to/administrate/kubernetes/certificate-renewal/scenario-1\_k8s-v1.14-kubespray.md)
        * [restart-machines](src/how-to/administrate/kubernetes/restart-machines/README.md)
          * [index](src/how-to/administrate/kubernetes/restart-machines/index.md)
        * [upgrade-cluster](src/how-to/administrate/kubernetes/upgrade-cluster/README.md)
          * [index](src/how-to/administrate/kubernetes/upgrade-cluster/index.md)
    * [install](src/how-to/install/README.md)
      * [ansible-VMs](src/how-to/install/ansible-VMs.md)
      * [ansible-authentication](src/how-to/install/ansible-authentication.md)
      * [ansible-tinc](src/how-to/install/ansible-tinc.md)
      * [aws-prod](src/how-to/install/aws-prod.md)
      * [Dependencies](src/how-to/install/dependencies.md)
      * [helm-prod](src/how-to/install/helm-prod.md)
      * [helm](src/how-to/install/helm.md)
      * [Installation](src/how-to/install/index.md)
      * [infrastructure-configuration](src/how-to/install/infrastructure-configuration.md)
      * [Ingress traffic to wire-server (ingress-nginx-controller)](src/how-to/install/ingress.md)
      * [kubernetes](src/how-to/install/kubernetes.md)
      * [logging](src/how-to/install/logging.md)
      * [monitoring](src/how-to/install/monitoring.md)
      * [Implementation plan](src/how-to/install/planning.md)
      * [post-install](src/how-to/install/post-install.md)
      * [Introduction](src/how-to/install/prod-intro.md)
      * [restund](src/how-to/install/restund.md)
      * [sft](src/how-to/install/sft.md)
      * [tls](src/how-to/install/tls.md)
      * [Troubleshooting during installation](src/how-to/install/troubleshooting.md)
      * [Required/Supported versions](src/how-to/install/version-requirements.md)
      * [Web app settings](src/how-to/install/web-app-settings.md)
