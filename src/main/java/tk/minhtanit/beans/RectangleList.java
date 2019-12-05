package tk.minhtanit.beans;

import java.util.ArrayList;
import java.util.List;

public class RectangleList {
    private List<Rectangle> list = new ArrayList<>();

    public void setRectangle(Rectangle rectangle) {
        this.list.add(rectangle);
    }

    public List<Rectangle> getList() {
        return list;
    }

    public void setList(List<Rectangle> list) {
        this.list = list;
    }
}
