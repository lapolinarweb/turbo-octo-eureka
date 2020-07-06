export const paginatedCollectionSchema = {
    id: '/paginatedCollectionSchema',
    type: 'object',
    properties: {
        total: { type: 'number' },
        perPage: { type: 'number' },
        page: { type: 'number' },
    },
    required: ['total', 'perPage', 'page'],
};
