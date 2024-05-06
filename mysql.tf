# Создание кластера MySQL в Yandex Cloud
resource "yandex_mdb_mysql_cluster" "mysql_cluster" {
  name        = "mysql-cluster"
  environment = "PRESTABLE"
  network_id  = yandex_vpc_network.vpc.id
  version     = "8.0"

  # Настройка ресурсов кластера
  resources {
    resource_preset_id = "s2.micro"
    disk_size          = 20
    disk_type_id       = "network-ssd"
  }

  # Конфигурация хостов в разных зонах для отказоустойчивости
  host {
    zone      = var.private_subnet_zone_1
    subnet_id = yandex_vpc_subnet.private_subnet_1.id
  }

  host {
    zone      = var.private_subnet_zone_2
    subnet_id = yandex_vpc_subnet.private_subnet_2.id
  }

  host {
    zone      = var.private_subnet_zone_3
    subnet_id = yandex_vpc_subnet.private_subnet_3.id
  }

  # Настройка окна для резервного копирования
  backup_window_start {
    hours   = 23
    minutes = 59
  }

  # Настройка окна технического обслуживания
  maintenance_window {
    type  = "WEEKLY"
    day   = "MON"
    hour  = 3
  }

  # Включение защиты от случайного удаления
  deletion_protection = false
}

# Создание базы данных внутри кластера MySQL
resource "yandex_mdb_mysql_database" "db_netology" {
  cluster_id = yandex_mdb_mysql_cluster.mysql_cluster.id
  name       = "netology_db"
}

# Создание пользователя базы данных с определенными правами доступа
resource "yandex_mdb_mysql_user" "db_user" {
  cluster_id = yandex_mdb_mysql_cluster.mysql_cluster.id
  name       = var.db_user_name      # Использование переменной для имени пользователя
  password   = var.db_user_password  # Использование переменной для пароля

  # Настройка прав доступа пользователя
  permission {
    database_name = yandex_mdb_mysql_database.db_netology.name
  }
}
