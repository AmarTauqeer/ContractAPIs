from flask_restful import Resource
from flask_apispec.views import MethodResource
from flask_apispec import doc
from sparql.queries import SPARQL
from credentials.user_credentials import UserCredentials


class ContractRevokeByContractId(MethodResource, Resource, UserCredentials):
    @doc(description='Contract revoke by contract id.', tags=['Contract revoke By Contract Id'])
    # @UserCredentials.check_for_token
    def put(self, id):
        query = SPARQL()
        result = query.contract_revoke_by_id(id)
        return result