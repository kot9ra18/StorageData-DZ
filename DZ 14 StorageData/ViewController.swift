//
//  ViewController.swift
//  DZ 14 StorageData
//
//  Created by Александр Прохоров on 17.02.2022.
//
/*  Для всех задач сделайте один проект, в котором все задачи будут реализованы на разных контроллерах:
 a) два текстовых поля для имени и фамилии, которые сохраняют введённые данные в UserDefaults, а при повторном запуске приложения показывают последние введённые строки;
 b) Список Todo с возможностью добавления и удаления задач, в котором задачи кешируются в Realm, а при повторном запуске показываются последние сохранённые задачи.
 c) То же самое, только с использованием CoreData.
 d) Перенесите экран с показом погоды из предыдущего домашнего задания в этот проект. Сделайте кеширование для текущей погоды и прогноза после загрузки с сервера, чтобы после перезапуска показывались последние сохранённые данные (пока идёт повторное обновление).
 e) Создайте аккаунт на http://bitbucket.org/ и http://github.com, в каждом из сервисов создайте публичный репозиторий под этот проект, выгрузите его в них и пришлите ссылки на репозитории.
 */

/*Зарегистрируйтесь на сайте https://api.openweathermap.org для получения погоды по API. Создайте один проект, в котором будет два контроллера каждый из которых реализует следующие задачи:
 Показывает текущую погоду.
 Показывает прогноз на пять дней.*/

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextField.text = Persistans.shared.userName
        surNameTextField.text = Persistans.shared.userSurName
    }

    @IBAction func nameActionTextField(_ sender: Any) {
        Persistans.shared.userName = nameTextField.text
    }
    
    @IBAction func surNameActionTextField(_ sender: Any) {
        Persistans.shared.userSurName = surNameTextField.text
    }
    

}

