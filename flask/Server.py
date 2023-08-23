from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/process_data', methods=['POST'])
def process_data():
    data = request.get_json()
    # Aqui você pode processar os dados e retornar uma resposta
    response = {'result': 'Processed data successfully'}
    return jsonify(response)

if __name__ == '__main__':
    app.run(debug=True)
