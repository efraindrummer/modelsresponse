from dataclasses import dataclass
from typing import Any, List, TypeVar, Callable, Type, cast


T = TypeVar("T")


def from_str(x: Any) -> str:
    assert isinstance(x, str)
    return x


def from_list(f: Callable[[Any], T], x: Any) -> List[T]:
    assert isinstance(x, list)
    return [f(y) for y in x]


def to_class(c: Type[T], x: Any) -> dict:
    assert isinstance(x, c)
    return cast(Any, x).to_dict()


@dataclass
class ResponseGetAllUsersRole:
    id: int
    email: str
    name: str
    lastname: str
    image: str
    phone: str
    password: str
    notification_token: str
    roles: str

    @staticmethod
    def from_dict(obj: Any) -> 'ResponseGetAllUsersRole':
        assert isinstance(obj, dict)
        id = int(from_str(obj.get("id")))
        email = from_str(obj.get("email"))
        name = from_str(obj.get("name"))
        lastname = from_str(obj.get("lastname"))
        image = from_str(obj.get("image"))
        phone = from_str(obj.get("phone"))
        password = from_str(obj.get("password"))
        notification_token = from_str(obj.get("notification_token"))
        roles = from_str(obj.get("roles"))
        return ResponseGetAllUsersRole(id, email, name, lastname, image, phone, password, notification_token, roles)

    def to_dict(self) -> dict:
        result: dict = {}
        result["id"] = from_str(str(self.id))
        result["email"] = from_str(self.email)
        result["name"] = from_str(self.name)
        result["lastname"] = from_str(self.lastname)
        result["image"] = from_str(self.image)
        result["phone"] = from_str(self.phone)
        result["password"] = from_str(self.password)
        result["notification_token"] = from_str(self.notification_token)
        result["roles"] = from_str(self.roles)
        return result


def response_get_all_users_roles_from_dict(s: Any) -> List[ResponseGetAllUsersRole]:
    return from_list(ResponseGetAllUsersRole.from_dict, s)


def response_get_all_users_roles_to_dict(x: List[ResponseGetAllUsersRole]) -> Any:
    return from_list(lambda x: to_class(ResponseGetAllUsersRole, x), x)
