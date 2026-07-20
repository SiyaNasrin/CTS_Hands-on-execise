import React,{Component} from "react";
import Post from "./Post";

class Posts extends Component{

    constructor(props){
        super(props);

        this.state={
            posts:[]
        };
    }

    loadPosts(){

        fetch("https://jsonplaceholder.typicode.com/posts")
        .then(response=>response.json())
        .then(data=>{

            const postList=data.map(
                item=>new Post(
                    item.id,
                    item.title,
                    item.body
                )
            );

            this.setState({
                posts:postList
            });

        })
        .catch(error=>{
            alert(error);
        });

    }

    componentDidMount(){
        this.loadPosts();
    }

    componentDidCatch(error){
        alert("Error : "+error);
    }

    render(){

        return(

            <div>

                <h1 style={{textAlign:"center"}}>
                    Blog Application
                </h1>

                {
                    this.state.posts.map(post=>

                        <div
                        key={post.id}
                        style={{
                            border:"1px solid black",
                            margin:"20px",
                            padding:"15px",
                            borderRadius:"8px"
                        }}>

                            <h2>{post.title}</h2>

                            <p>{post.body}</p>

                        </div>

                    )
                }

            </div>

        );

    }

}

export default Posts;