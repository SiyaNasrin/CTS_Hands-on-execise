import "./../Stylesheets/mystyle.css";

function CalculateScore(props) {
    const average = (props.Total / props.Goal) * 100;

    return (
        <div className="container">
            <h1>Student Score Calculator</h1>

            <h3>Name : {props.Name}</h3>
            <h3>School : {props.School}</h3>
            <h3>Total Marks : {props.Total}</h3>
            <h3>Goal : {props.Goal}</h3>
            <h3>Average Score : {average}%</h3>
        </div>
    );
}

export default CalculateScore;