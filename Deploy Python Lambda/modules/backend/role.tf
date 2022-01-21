resource "aws_iam_role" "lambda-role" {
  name = "${var.environment}-lambda-role"

  assume_role_policy = "${file("${path.module}/lambda_role.json")}"

  tags = {
    "Name" = "${var.environment}-lambda-role"
    "Environment" = "${var.environment}"
  }
}

/* policy */
data "template_file" "lambda-policy-template" {
  template = "${file("${path.module}/lambda_policy.json")}"
}

resource "aws_iam_role_policy" "lambda-policy" {
  name = "${var.environment}-lambda-policy"
  role = aws_iam_role.lambda-role.id
  policy = data.template_file.lambda-policy-template.rendered

}