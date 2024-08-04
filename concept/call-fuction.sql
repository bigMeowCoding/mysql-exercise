select c.client_id, c.name, getRiskFactor(c.client_id)
from clients c;
