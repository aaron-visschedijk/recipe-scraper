resource "aws_lambda_function" "lambda" {
  function_name = "recipe-scraper"
  role          = aws_iam_role.lambda_role.arn
  handler       = "main.lambda_handler"

  s3_bucket = aws_s3_bucket.lambda_bucket.id
  s3_key = "lambda.zip"

  runtime = "python3.9"
}
