package model;

public class Participant {

    private int id;
    private String name;
    private int age;
    private String gender;
    private String contact;
    private String campType;

    public Participant(int id, String name, int age,
                       String gender, String contact,
                       String campType) {

        this.id = id;
        this.name = name;
        this.age = age;
        this.gender = gender;
        this.contact = contact;
        this.campType = campType;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public int getAge() {
        return age;
    }

    public String getGender() {
        return gender;
    }

    public String getContact() {
        return contact;
    }

    public String getCampType() {
        return campType;
    }
}