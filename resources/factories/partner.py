def factory_404_partner():
    partner = {
        'name': 'Franqueto',
        'email': 'contato@Franqueto.com.br',
        'whatsapp': '11999999999',
        'business': 'Restaurante'
    }
    return partner

def factory_enable_partner():
    partner = {
        'name': 'Doceria do Alemão',
        'email': 'contato@doceriaalm.com.br',
        'whatsapp': '11999999999',
        'business': 'Conveniência'
    }
    return partner

def factory_new_partner():
    partner = {
        'name': 'Pizzas Papito',
        'email': 'contato@papito.com.br',
        'whatsapp': '11999999999',
        'business': 'Restaurante'
    }
    return partner


def factory_dup_name():
    partner = {
        'name': 'Adega do alemão',
        'email': 'contato@alemao.com.br',
        'whatsapp': '21999999999',
        'business': 'Conveniência'
    }
    return partner


def factory_partner_list():

    p_list = [
        {
            'name': 'Adega do Alemão',
            'email': 'contato@alemao.com.br',
            'whatsapp': '21999999999',
            'business': 'Conveniência'
        },
        {
            'name': 'mercearia do João',
            'email': 'contato@joao.com.br',
            'whatsapp': '31999999999',
            'business': 'Supermercado'
        },
        {
            'name': 'Restaurante do Gordão',
            'email': 'contato@gordao.com.br',
            'whatsapp': '81999999999',
            'business': 'Restaurante'
        }
    ]

    return p_list
