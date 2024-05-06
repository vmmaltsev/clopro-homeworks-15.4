# Создание VPC сети
resource "yandex_vpc_network" "vpc" {
  name = var.vpc_name
}

# Создание первой публичной подсети в заданной зоне доступности
resource "yandex_vpc_subnet" "public_subnet_1" {
  name       = var.public_subnet_name_1
  zone       = var.public_subnet_zone_1
  network_id = yandex_vpc_network.vpc.id
  v4_cidr_blocks = [var.public_subnet_cidr_1]
}

# Создание второй публичной подсети в другой зоне доступности для обеспечения отказоустойчивости
resource "yandex_vpc_subnet" "public_subnet_2" {
  name       = var.public_subnet_name_2
  zone       = var.public_subnet_zone_2
  network_id = yandex_vpc_network.vpc.id
  v4_cidr_blocks = [var.public_subnet_cidr_2]
}

# Создание третьей публичной подсети в другой зоне доступности для обеспечения отказоустойчивости
resource "yandex_vpc_subnet" "public_subnet_3" {
  name       = var.public_subnet_name_3
  zone       = var.public_subnet_zone_3
  network_id = yandex_vpc_network.vpc.id
  v4_cidr_blocks = [var.public_subnet_cidr_3]
}

# Создание первой приватной подсети в одной из зон доступности
resource "yandex_vpc_subnet" "private_subnet_1" {
  name       = var.private_subnet_name_1
  zone       = var.private_subnet_zone_1
  network_id = yandex_vpc_network.vpc.id
  v4_cidr_blocks = [var.private_subnet_cidr_1]
}

# Создание второй приватной подсети в другой зоне доступности для обеспечения отказоустойчивости
resource "yandex_vpc_subnet" "private_subnet_2" {
  name       = var.private_subnet_name_2
  zone       = var.private_subnet_zone_2
  network_id = yandex_vpc_network.vpc.id
  v4_cidr_blocks = [var.private_subnet_cidr_2]
}

# Создание третьей приватной подсети в третьей зоне доступности для дальнейшего расширения и балансировки
resource "yandex_vpc_subnet" "private_subnet_3" {
  name       = var.private_subnet_name_3
  zone       = var.private_subnet_zone_3
  network_id = yandex_vpc_network.vpc.id
  v4_cidr_blocks = [var.private_subnet_cidr_3]
}
