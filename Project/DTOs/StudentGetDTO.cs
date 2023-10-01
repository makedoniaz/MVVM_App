namespace Project.DTOs;

public class StudentGetDTO
{
    public int Id { get; set; }

    public required string Fullname { get; set; }

    public string GroupName { get; set; }
}
