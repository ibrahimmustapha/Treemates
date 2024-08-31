import {
  Route,
  BrowserRouter as Router,
  Routes,
} from "react-router-dom";
import Dashboard from "./pages/Dashboard";


const App = () => {
  return (
    <Router>
      <Routes>
        <Route path="/" exact index Component={Dashboard} />
      </Routes>
    </Router>
  );
};

export default App;
