from fastapi import FastAPI

app = FastAPI(title="SlotBay API")


@app.get("/health")
def health() -> dict[str, str]:
    return {"status": "ok"}
