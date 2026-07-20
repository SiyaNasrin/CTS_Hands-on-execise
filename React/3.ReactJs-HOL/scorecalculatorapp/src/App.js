import CalculateScore from "./Components/CalculateScore";

function App() {
  return (
    <div>
      <CalculateScore
        Name="Siya Nasrin"
        School="FISAT"
        Total={480}
        Goal={500}
      />
    </div>
  );
}

export default App;