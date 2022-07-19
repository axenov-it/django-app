import { Router, Page, Header, ResetStyles } from "components";

function App() {
  return (
    <div className="App">
      <ResetStyles />
      <Header />
      <Page>
        <Router />
      </Page>
    </div>
  );
}

export default App;
