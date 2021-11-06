package mvc.models;


//import javax.validation.constraints.NotBlank;
//import javax.validation.constraints.Size;


import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

public class User {
    private static int increment = 0;
    private int id;

    @NotBlank(message = "blank")
    @Size(min = 2, max = 30, message = "* required field")
    private String surname;

    @NotBlank
    @Size(min = 2, max = 30, message = "* required field must be at least 2 symbols")
    private String name;


    private int birthYear;
    private String country;
    private boolean family;
    private String[] programmingLanguages;

    public User() {
        id = ++increment;
    }

    public boolean isFamily() {
        return family;
    }

    public void setFamily(boolean family) {
        this.family = family;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public int getBirthYear() {
        return birthYear;
    }

    public void setBirthYear(int birthYear) {
        this.birthYear = birthYear;
    }

    public String[] getProgrammingLanguages() {
        return programmingLanguages;
    }

    public void setProgrammingLanguages(String[] programmingLanguages) {
        this.programmingLanguages = programmingLanguages;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                ", birthYear=" + birthYear +
                '}';
    }
}
