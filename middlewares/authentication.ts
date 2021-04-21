import {Token} from '../class/token';
import { NextFunction, Response } from 'express';

export const verificarToken = (req:any, res:Response, next:NextFunction)=>{

    const userToken = req.get('x-token') || "";

    Token.checkToken(userToken).then(decoded=>{
        console.log(decoded)
        req.usuario = decoded.usuario
        next()
    })
    .catch(error=>{
        res.json({
            estado:"success",
            mensaje:"Token incorrecto",
            error: error
        })
    })

}




