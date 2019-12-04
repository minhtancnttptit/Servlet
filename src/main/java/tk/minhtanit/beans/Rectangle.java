package tk.minhtanit.beans;

public class Rectangle {
    private int width;
    private int length;

    public int getWidth() {
        return width;
    }

    public void setWidth(int width) {
        this.width = width;
    }

    public int getLength() {
        return length;
    }

    public void setLength(int length) {
        this.length = length;
    }

    /*
    * We add a method that does not map with any property but is the
    * result of caculation
    * @return int area value
    * */

    public int getArea() {
        return this.width * this.length;
    }
}
