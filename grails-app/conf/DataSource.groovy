dataSource {
    driverClassName = "org.postgresql.Driver"
    dialect = org.hibernate.dialect.PostgreSQLDialect
}
hibernate {
    cache.use_second_level_cache=true
    cache.use_query_cache=true
    //cache.provider_class='com.opensymphony.oscache.hibernate.OSCacheProvider'
    cache.provider_class='net.sf.ehcache.hibernate.EhCacheProvider'
}
// environment specific settings
/* TODO   change bytea_output = 'hex' to bytea_output = 'escape'  !!!!!!!!!!!! en el archivo /var/lib/pgsql/data/postgresql.conf
 *                                                                                           /etc/postgresql/9.1/main/postgresql.conf*/
environments {
    development {
        dataSource {
            dbCreate = "update"
            url = "jdbc:postgresql://10.0.0.2:5432/nth_tedein"
            username = "postgres"
            password = "postgres"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:postgresql://localhost:5432/nth"
            username = "postgres"
            password = "postgres"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
            url = "jdbc:postgresql://127.0.0.1:5432/nth"
            username = "postgres"
            password = "steinsgate"
        }
    }
}
