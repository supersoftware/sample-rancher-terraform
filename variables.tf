#------------------------------------------#
# AWS Environment Variables
#------------------------------------------#
variable "region" {
    default     = "ap-northeast-1"
    description = "AWSのリージョン"
}

variable "acm_cert_domain" {
    default     = "console.example.com"
    description = "証明書のドメイン"
}

variable "count" {
    default     = "3"
    description = "デプロイするRancherServerの数"
}

variable "name_prefix" {
    default     = "console"
    description = "AWSリソース名のプレフィックス"
}

variable "ami" {
    default     = "ami-e499b383"
    description = "利用するインスタンスAMIのID"
}

variable "key_name" {
    default     = "secret-key"
    description = "SSHキーの名称"
}

variable "instance_type" {
    default     = "t2.large"
    description = "EC2のインスタンスタイプ"
}

variable "root_volume_size" {
    default     = "16"
    description = "各インスタンスのルートボリュームサイズ(GB)"
}

variable "vpc_cidr" {
    default     = "192.168.199.0/24"
    description = "VPCのCIDR"
}

variable "subnet_cidrs" {
    default     = ["192.168.199.0/26", "192.168.199.64/26"]
    description = "サブネット"
}

variable "availability_zones" {
    default     = ["ap-northeast-1a", "ap-northeast-1c"]
    description = "サブネットを配置するAZ"
}

variable "internal_elb" {
    default     = "false"
    description = "ELBをinnternal onlyにするか？"
}

#------------------------------------------#
# Database Variables
#------------------------------------------#
variable "db_name" {
    default     = "rancher"
    description = "RDS データベース名"
}

variable "db_user" {
    default     = "rancher"
    description = "RDS ユーザー名"
}

variable "db_pass" {
    default     = "rancher"
    description = "RDS パスワード"
}

variable "db_instance_type" {
    default     = "db.r3.large"
    description = "RDSのインスタンスタイプ"
}

variable "db_count" {
    default     = "2"
    description = "デプロイするRDSクラスターの数"
}

#------------------------------------------#
# SSL Variables
#------------------------------------------#
variable "enable_https" {
    default     = true
    description = "ロードバランサーでHTTPSターミネーションをするか？"
}

#------------------------------------------#
# Rancher Variables
#------------------------------------------#
variable "rancher_version" {
    default     = "stable"
    description = "デプロイするRancherイメージのタグ"
}
