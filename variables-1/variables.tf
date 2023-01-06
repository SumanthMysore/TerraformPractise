variable "filename" {
  default = "./files/my-hobby.txt"
  type = string
  description = "Give a filename along with path for argument filename."
}

variable "content" {
  default = {
    "statement1" = "Playing cricket."
    "statement2" = "Playing Badminton."
  }
  type = map(string)
  description = "Choose your hobby from the map for argument content."
}

variable "length" {
  default = [1,2,3]
  type = list(number)
  description = "Give a number for argument length."
}

variable "separator" {
  default = "."
  type = string
  description = "Give a seperator for argument seperator."
}

variable "prefix" {
  default = ["Mr", "Mrs", "Sir", "Madam"]
  type = list(string)
  description = "Choose a prefix from the list for argument prefix."
}

variable "myobject" {
    type = object({
        name = map(string)
        hobby = list(string)
        age = number
        gender = string
    })
    default = {
      age = 21
      name = {
          "1" = "./files/hobby1.txt"
          "2" = "./files/hobby2.txt"
      }
      hobby = [ "Playing tennis", "Playing hockey" ]
      gender = "male"
    }
    description = "Choose the values from the object."
}

variable "mytuple" {
  type = tuple([string, string, number, bool])
  default = ["./files/hobby3.txt", "photography", 21, true]
}
