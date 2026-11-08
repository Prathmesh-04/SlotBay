from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI(title="SlotBay API")


class Listing(BaseModel):
    id: int
    title: str
    latitude: float
    longitude: float
    ratePerMinutePaise: int


@app.get("/health")
def health() -> dict[str, str]:
    return {"status": "ok"}


@app.get("/listings")
def listings() -> list[Listing]:
    return [
    Listing(id = 1, title = "First Spot", latitude = 26.794314, longitude =  80.912641, ratePerMinutePaise =  80),
    Listing(id = 2, title =  "Second Spot", latitude =  26.788778, longitude =  80.909444, ratePerMinutePaise =  70),
    Listing(id = 3, title =  "Third Spot", latitude =  26.788412, longitude =  80.919279, ratePerMinutePaise =  50)
    ]
