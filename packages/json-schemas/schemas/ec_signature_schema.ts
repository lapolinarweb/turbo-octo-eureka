export const ecSignatureParameterSchema = {
    id: '/ecSignatureParameterSchema',
    type: 'string',
    pattern: '^0[xX][0-9A-Fa-f]{64}$',
};

export const ecSignatureSchema = {
    id: '/ECSignature',
    properties: {
        v: {
            type: 'number',
            minimum: 27,
            maximum: 28,
        },
        r: { $ref: '/ecSignatureParameterSchema' },
        s: { $ref: '/ecSignatureParameterSchema' },
    },
    required: ['v', 'r', 's'],
    type: 'object',
};
