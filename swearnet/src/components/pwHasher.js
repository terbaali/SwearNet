import bcrypt from "bcryptjs-react";
import crypto from 'crypto-js/sha256';
import sha256 from 'crypto-js/sha256';

// Funktio salasanan hashaukseen bcryptillä ja sha256:lla
export const hashPassword = async (password) => {
  try {
    const hashedBcrypt = await bcrypt.hash(password, 10);
    
    const hashedPassword = sha256(hashedBcrypt).toString();

    //const pepper = 
    //const hashedPassword = sha256.updatehashedBcrypt + pepper).digest('hex');
    return hashedPassword;
  } 
  catch (error) {
    throw new Error('Error hashing password');
  }
};
/*
export const comparePasswords = async (password, hashedPassword) => {
  try {
    const isBcryptMatch = await bcrypt.compare(password, hashedPassword);
    return isBcryptMatch;
  } 
  catch (error) {
    throw new Error('Error comparing passwords');
  }
};
*/