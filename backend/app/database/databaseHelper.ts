import { db } from './firebaseConfig';

export class DatabaseHelper {

    /**
     * Método para obter todos os registros de uma referência específica no banco de dados.
     * 
     * @param {string} ref - A referência (nome da coleção) no banco de dados.
     * @returns {Promise<any>} Uma promessa que resolve para os dados de todos os registros na referência.
     */
    static async getAll(ref: string) {
        // Obtém um instantâneo dos dados na referência especificada
        const snapshot = await db.ref(ref).once('value');
        // Retorna os dados dos registros
        return snapshot.val();
    }

    /**
     * Método para obter um registro específico pelo ID em uma referência no banco de dados.
     * 
     * @param {string} ref - A referência (nome da coleção) no banco de dados.
     * @param {string} id - O ID do registro a ser recuperado.
     * @returns {Promise<any>} Uma promessa que resolve para os dados do registro com o ID especificado.
     */
    static async getById(ref: string, id: string) {
        // Obtém um instantâneo dos dados no caminho especificado pela referência e ID
        const snapshot = await db.ref(`${ref}/${id}`).once('value');
        // Retorna os dados do registro
        return snapshot.val();
    }

    /**
     * Método para criar um novo registro em uma referência específica no banco de dados.
     * 
     * @param {string} ref - A referência (nome da coleção) no banco de dados.
     * @param {any} data - Os dados do novo registro a ser criado.
     * @returns {Promise<any>} Uma promessa que resolve para os dados do novo registro criado, incluindo seu ID gerado.
     */
    static async create(ref: string, data: any) {
        // Cria uma nova referência na coleção especificada e gera um novo ID
        const newRef = db.ref(ref).push();
        // Define os dados na nova referência criada
        await newRef.set(data);
        // Retorna os dados do novo registro, incluindo o ID gerado
        return { id: newRef.key, ...data };
    }

    /**
     * Método para atualizar um registro existente pelo ID em uma referência específica no banco de dados.
     * 
     * @param {string} ref - A referência (nome da coleção) no banco de dados.
     * @param {string} id - O ID do registro a ser atualizado.
     * @param {any} data - Os novos dados do registro.
     * @returns {Promise<any>} Uma promessa que resolve para os dados atualizados do registro, incluindo o ID.
     */
    static async update(ref: string, id: string, data: any) {
        // Atualiza os dados no caminho especificado pela referência e ID
        await db.ref(`${ref}/${id}`).update(data);
        // Retorna os dados atualizados do registro, incluindo o ID
        return { id, ...data };
    }

    /**
     * Método para deletar um registro existente pelo ID em uma referência específica no banco de dados.
     * 
     * @param {string} ref - A referência (nome da coleção) no banco de dados.
     * @param {string} id - O ID do registro a ser deletado.
     * @returns {Promise<void>} Uma promessa que resolve quando a operação de exclusão for concluída.
     */
    static async delete(ref: string, id: string) {
        // Remove os dados no caminho especificado pela referência e ID
        await db.ref(`${ref}/${id}`).remove();
    }
}
