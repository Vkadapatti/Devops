#include <iostream>
#include <string>

class HomeOwner {
private:
    std::string name;
public:
    HomeOwner(const std::string& name) : name(name) {}
    std::string getName() const { return name; }
};

class EnvironmentSensor {
private:
    std::string season;
    int temperature;
public:
    EnvironmentSensor(const std::string& season, int temperature) : season(season), temperature(temperature) {}
    std::string getSeason() const { return season; }
    int getTemperature() const { return temperature; }
};

class WaterHeater {
private:
    int temperature;
public:
    WaterHeater() : temperature(0) {}
    void setTemperature(int temp) { temperature = temp; }
    int getTemperature() const { return temperature; }
};

class SmartGeyser {
private:
    HomeOwner owner;
    EnvironmentSensor sensor;
    WaterHeater heater;
public:
    SmartGeyser(const HomeOwner& owner, const EnvironmentSensor& sensor) : owner(owner), sensor(sensor) {}

    void activate() {
        std::cout << "Geyser activated. Enjoy your warm shower!\n";
    }
};

int main() {
    HomeOwner owner("RAM");
    EnvironmentSensor sensor("Winter", 10);
    SmartGeyser geyser(owner, sensor);
    geyser.activate();

    return 0;
}
