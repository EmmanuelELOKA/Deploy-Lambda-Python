resource "aws_lambda_function" "lambda" {
  filename = "hello-world.zip"
  function_name = "${var.environment}-lambda"
  handler = "lambda_function.lambda_handler"
  source_code_hash = filebase64sha256("hello-world.zip")
  runtime = "python3.8"
  role = aws_iam_role.lambda-role.arn
  timeout = 300
}

# resource "aws_lambda_permission" "allow_cognito" {
#   for_each = toset(var.lambda_name)
#   statement_id = "AllowExecutionFromCognito"
#   action = "lambda:InvokeFunction"
#   function_name = aws_lambda_function.lambda[each.value].function_name
#   principal = "cognito-idp.amazonaws.com"
#   source_arn = aws_cognito_user_pool.pool.arn
# }

