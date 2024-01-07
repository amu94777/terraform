variable "ingress-rules" {
    default = [
        {
        description      = "roboshop-all"
          from_port        = 80
          to_port          = 80
          protocol         = "tcp"
          cidr_blocks      = ["0.0.0.0/0"]
        },
         
         {
         description      = "roboshop-all"
          from_port        = 443
          to_port          = 443
          protocol         = "tcp"
          cidr_blocks      = ["0.0.0.0/0"]
        },


        {
         description      = "roboshop-all"
          from_port        = 22
          to_port          = 22
          protocol         = "tcp"
          cidr_blocks      = ["0.0.0.0/0"]
        },

        # {
        #  description      = "roboshop-all"
        #   from_port        = 8080
        #   to_port          = 8080
        #   protocol         = "tcp"
        #   cidr_blocks      = ["0.0.0.0/0"]
        # }
        
    ]
} 
  
    
    
