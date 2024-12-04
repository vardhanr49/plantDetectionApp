output "bucket_website_endpoint" {
    value = aws_s3_bucket.static_site.website_endpoint
    description = "The website endpoint of the bucket"
}