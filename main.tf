
resource "template_file" "cloudformation_sns_stack" {
    template = "${file("${path.module}/templates/email-sns-stack.json.tpl")}"

    vars {
        display_name  = "${var.display_name}"
        email_address = "${var.email_address}"
        protocol      = "${var.protocol}"
    }
}


resource "aws_cloudformation_stack" "sns-topic" {
    name = "${var.stack_name}"
    template_body = "${template_file.cloudformation_sns_stack.rendered}"

  tag {
    key                 = "DAC"
    value               = "${var.tags_dac}"
    propagate_at_launch = true
  }

  tag {
    key                 = "Data Classification"
    value               = "${var.tags_data_classification}"
    propagate_at_launch = true
  }

  tag {
    key                 = "Description"
    value               = "${var.tags_description}"
    propagate_at_launch = true
  }

  tag {
    key                 = "Environment"
    value               = "${var.tags_environment}"
    propagate_at_launch = true
  }

  tag {
    key                 = "GBL"
    value               = "${var.tags_gbl}"
    propagate_at_launch = true
  }

  tag {
    key                 = "Deployment Name"
    value               = "${var.tags_name}"
    propagate_at_launch = true
  }

  tag {
    key                 = "Owner"
    value               = "${var.tags_owner}"
    propagate_at_launch = true
  }

  tag {
    key                 = "Pyxis"
    value               = "${var.tags_pyxis}"
    propagate_at_launch = true
  }

  tag {
    key                 = "Version"
    value               = "${var.tags_version}"
    propagate_at_launch = true
  }

  tag {
    key                 = "Static"
    value               = "${var.tags_static}"
    propagate_at_launch = true
  }
}
