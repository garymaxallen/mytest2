//
//  ViewController.swift
//  mytest2
//
//  Created by pcl on 9/26/22.
//

import UIKit

class ViewController: UIViewController {
    let screenWidth = UIScreen.main.bounds.size.width
    let screenHeight = UIScreen.main.bounds.size.height

    let textView = UITextView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        // setScrollView1()
        // listFont()
        setTextView()
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }

    func myfunc1() {
        NSLog("com.mycom.mytest2.log: %@", "fdasfasfasfasfasdffasa")
        view.backgroundColor = UIColor.systemGreen
        let width = UIScreen.main.bounds.size.width
        let height = UIScreen.main.bounds.size.height
        let button1 = UIButton(frame: CGRect(x: width / 3, y: height / 2, width: 100, height: 30))
        button1.backgroundColor = UIColor.systemBlue

        let scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: width, height: height))
        scrollView.showsVerticalScrollIndicator = true
        scrollView.addSubview(button1)

        view.addSubview(scrollView)
        NSLog("com.mycom.mytest2.log: %@", button1.backgroundColor ?? "<nil>")
    }

    func listFont() {
        for family in UIFont.familyNames {
            for font in UIFont.fontNames(forFamilyName: family) {
                NSLog("com.mycom.mytest2.log: family: %@ font: %@", family, font)
            }
        }
    }

    func setScrollView2() {}

    func setTextView() {
        let escButton = UIButton(type: UIButton.ButtonType.system)
        escButton.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        escButton.setTitle("ESC", for: UIControl.State.normal)
        escButton.setTitleColor(UIColor.black, for: UIControl.State.normal)
        escButton.backgroundColor = UIColor.systemBackground
        escButton.addTarget(self, action: #selector(pressLeft), for: UIControl.Event.touchUpInside)
        escButton.layer.borderWidth = 1
        escButton.layer.borderColor = UIColor.black.cgColor
        escButton.layer.cornerRadius = 8

        let tabButton = UIButton(type: UIButton.ButtonType.system)
        tabButton.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        tabButton.setTitle("TAB", for: UIControl.State.normal)
        tabButton.setTitleColor(UIColor.black, for: UIControl.State.normal)
        tabButton.backgroundColor = UIColor.systemBackground
        tabButton.addTarget(self, action: #selector(pressTab), for: UIControl.Event.touchUpInside)
        tabButton.layer.borderWidth = 1
        tabButton.layer.borderColor = UIColor.black.cgColor
        tabButton.layer.cornerRadius = 8

        let leftButton = UIButton(type: UIButton.ButtonType.system)
        leftButton.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        leftButton.setTitle("←", for: UIControl.State.normal)
        leftButton.setTitleColor(UIColor.black, for: UIControl.State.normal)
        leftButton.backgroundColor = UIColor.systemBackground
        leftButton.addTarget(self, action: #selector(pressLeft), for: UIControl.Event.touchUpInside)
        leftButton.layer.borderWidth = 1
        leftButton.layer.borderColor = UIColor.black.cgColor
        leftButton.layer.cornerRadius = 8

        let toolBar = UIToolbar()
        toolBar.backgroundColor = UIColor.systemBackground
        // let barButtonItem1 = UIBarButtonItem(title: "Reset", style: UIBarButtonItem.Style.plain, target: self, action: #selector(resetTapped))
        let space = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        toolBar.items = [UIBarButtonItem(customView: escButton), UIBarButtonItem(customView: tabButton), UIBarButtonItem(customView: leftButton), space]
        toolBar.sizeToFit()
        textView.inputAccessoryView = toolBar

        view.addSubview(textView)

        registerForKeyboardNotifications()

        textView.backgroundColor = UIColor.systemBackground
        textView.contentInsetAdjustmentBehavior = .automatic
        textView.center = view.center
        textView.textAlignment = NSTextAlignment.justified
        textView.textColor = UIColor.black
        textView.font = UIFont(name: "Consolas", size: 24)

        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        textView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        textView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }

    @objc func pressESC() {
        // let hex1 = 0x1b;
        textView.insertText("@x1b")
    }

    @objc func pressTab() {
        // let hex1 = 0x1b;
        textView.insertText("\t")
    }

    @objc func pressLeft() {
        // textView.insertText("left")
        // [NSString stringWithFormat:@"\x1b%c%c", self.applicationCursor ? 'O' : '[', direction];
        textView.insertText(NSString(format: "\\x1b%c%c", "[", "D") as String)
    }

    func registerForKeyboardNotifications() {
        NotificationCenter.default.addObserver(self, selector: #selector(onKeyboardAppear(_:)), name: UIResponder.keyboardDidShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(onKeyboardDisappear(_:)), name: UIResponder.keyboardDidHideNotification, object: nil)
    }

    // Don't forget to unregister when done
    deinit {
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardDidShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardDidHideNotification, object: nil)
    }

    @objc func onKeyboardAppear(_ notification: NSNotification) {
        let info = notification.userInfo!
        let rect: CGRect = info[UIResponder.keyboardFrameBeginUserInfoKey] as! CGRect
        let kbSize = rect.size

        let insets = UIEdgeInsets(top: 0, left: 0, bottom: kbSize.height, right: 0)
        textView.contentInset = insets
        textView.scrollIndicatorInsets = insets
    }

    @objc func onKeyboardDisappear(_: NSNotification) {
        textView.contentInset = UIEdgeInsets.zero
        textView.scrollIndicatorInsets = UIEdgeInsets.zero
    }

    func setScrollView1() {
        let scrollView = UIScrollView()
        let contentView = UIView()

        let titleLabel: UILabel = {
            let label = UILabel()
            label.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
            label.numberOfLines = 0
            label.sizeToFit()
            label.textColor = UIColor.black
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()

        let subtitleLabel: UILabel = {
            let label = UILabel()
            label.text = "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?  +++++++++++++++++++ Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?  +++++++++++++++++     Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"
            label.numberOfLines = 0
            label.sizeToFit()
            label.textColor = UIColor.black
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()

        view.addSubview(scrollView)
        scrollView.addSubview(contentView)

        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        scrollView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true

        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        contentView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true

        contentView.addSubview(titleLabel)
        titleLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        titleLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 3 / 4).isActive = true

        contentView.addSubview(subtitleLabel)
        subtitleLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 25).isActive = true
        // subtitleLabel.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        subtitleLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 3 / 4).isActive = true
        subtitleLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
    }
}
