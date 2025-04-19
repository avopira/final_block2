import java.util.HashMap;
import java.util.Map;

public class Animals {
    private Integer animalID;
    private String description;
    private Map<Integer, String> animals = new HashMap<>();

    public Animals() {
        animals.put(1, "Pets");
        animals.put(2, "PackAnimals");
    }

    public Integer getIdByDescription(String prompt) {
        int id = -1;
        for(Map.Entry<Integer, String> entry: animals.entrySet()) {
            if(entry.getValue().equals(prompt)) {
                id = entry.getKey();
                break;
            }
        }
        return id;
    }

    public String getDescriptionByID(Integer id) {
        String description = animals.get(id);
        return description;
    }
}