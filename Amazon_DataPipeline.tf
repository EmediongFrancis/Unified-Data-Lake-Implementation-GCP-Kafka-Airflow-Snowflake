resource "aws_data_pipeline_pipeline" "madhatter-pipeline" {
  name                = "madhatter_data_pipeline"
  unique_id           = "madhatter-data-pipeline"
  description         = "A pipeline to automate MadHatter's data movement."
  pipeline_definition = <<EOF
{
  "objects": [
    {
      "id": "Default",
      "name": "Default",
      "fields": [
        { "key": "scheduleType", "stringValue": "cron" },
        { "key": "failureAndRerunMode", "stringValue": "CASCADE" },
        { "key": "pipelineLogUri", "stringValue": "s3://${aws_s3_bucket.madhatter_data_lake.bucket}/logs" }
      ]
    }
  ]
}
EOF
}
