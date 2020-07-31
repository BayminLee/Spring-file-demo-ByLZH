package tdh.demo.vo;

public class GetUserListVO {

    private String name;
    private String depart;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDepart() {
        return depart;
    }

    public void setDepart(String depart) {
        this.depart = depart;
    }

    @Override
    public String toString() {
        return "GetUserListVO{" +
                "name='" + name + '\'' +
                ", depart='" + depart + '\'' +
                '}';
    }
}
