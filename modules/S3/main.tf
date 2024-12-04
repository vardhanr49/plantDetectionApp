# modules/s3/main.tf
resource "aws_s3_bucket" "static_site" {
    bucket = var.bucket_name
    acl    = "public-read"
    versioning {
        enabled = true
    }
    website {
        index_document = "index.html"
        error_document = "error.html"
    }

}
resource "aws_s3_bucket_object" "index_html" {
  bucket = aws_s3_bucket.static_site.id
  key    = "index.html"
  source = "./modules/S3/index.html"
  acl    = "public-read"
}

resource "aws_s3_bucket_object" "error_html" {
  bucket = aws_s3_bucket.static_site.id
  key    = "error.html"
  source = "./modules/S3/error.html"
  acl    = "public-read"
}



