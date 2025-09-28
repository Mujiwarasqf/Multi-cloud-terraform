resource "aws_ecr_repository" "shopedge" {
  name                 = "shopedge"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  # tags = merge(var.common_tags, {
  #   Name = "shopedge"
  # })
}

resource "aws_ecr_lifecycle_policy" "shopedge" {
  repository = aws_ecr_repository.shopedge.name

  policy = <<POLICY
  {
    "rules": [
      {
        "rulePriority": 1,
        "description": "Expire untagged images older than 30 days",
        "selection": {
          "tagStatus": "untagged",
          "countType": "sinceImagePushed",
          "countUnit": "days",
          "countNumber": 30
        },
        "action": {
          "type": "expire"
        }
      }
    ]
  }
  POLICY
}
