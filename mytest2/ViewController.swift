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
        escButton.frame = CGRect(x: 1, y: 0, width: 40, height: 40)
        escButton.setTitle("ESC", for: UIControl.State.normal)
        escButton.setTitleColor(UIColor.black, for: UIControl.State.normal)
        escButton.backgroundColor = UIColor.systemBackground
        escButton.addTarget(self, action: #selector(pressESC), for: UIControl.Event.touchUpInside)
        escButton.layer.borderWidth = 1
        escButton.layer.borderColor = UIColor.black.cgColor
        escButton.layer.cornerRadius = 8

        let tabButton = UIButton(type: UIButton.ButtonType.system)
        tabButton.frame = CGRect(x: 40, y: 0, width: 40, height: 40)
        tabButton.setTitle("TAB", for: UIControl.State.normal)
        tabButton.setTitleColor(UIColor.black, for: UIControl.State.normal)
        tabButton.backgroundColor = UIColor.systemBackground
        tabButton.addTarget(self, action: #selector(pressTab), for: UIControl.Event.touchUpInside)
        tabButton.layer.borderWidth = 1
        tabButton.layer.borderColor = UIColor.black.cgColor
        tabButton.layer.cornerRadius = 8

        let ctrlButton = UIButton(type: UIButton.ButtonType.system)
        ctrlButton.frame = CGRect(x: 80, y: 0, width: 40, height: 40)
        ctrlButton.setTitle("CTRL", for: UIControl.State.normal)
        ctrlButton.setTitleColor(UIColor.black, for: UIControl.State.normal)
        ctrlButton.backgroundColor = UIColor.systemBackground
        ctrlButton.addTarget(self, action: #selector(pressCtrl), for: UIControl.Event.touchUpInside)
        ctrlButton.layer.borderWidth = 1
        ctrlButton.layer.borderColor = UIColor.black.cgColor
        ctrlButton.layer.cornerRadius = 8

        let leftButton = UIButton(type: UIButton.ButtonType.system)
        leftButton.frame = CGRect(x: 120, y: 0, width: 40, height: 40)
        leftButton.setTitle("←", for: UIControl.State.normal)
        leftButton.setTitleColor(UIColor.black, for: UIControl.State.normal)
        leftButton.backgroundColor = UIColor.systemBackground
        leftButton.addTarget(self, action: #selector(pressLeft), for: UIControl.Event.touchUpInside)
        leftButton.layer.borderWidth = 1
        leftButton.layer.borderColor = UIColor.black.cgColor
        leftButton.layer.cornerRadius = 8

        let rightButton = UIButton(type: UIButton.ButtonType.system)
        rightButton.frame = CGRect(x: 160, y: 0, width: 40, height: 40)
        rightButton.setTitle("→", for: UIControl.State.normal)
        rightButton.setTitleColor(UIColor.black, for: UIControl.State.normal)
        rightButton.backgroundColor = UIColor.systemBackground
        rightButton.addTarget(self, action: #selector(pressRight), for: UIControl.Event.touchUpInside)
        rightButton.layer.borderWidth = 1
        rightButton.layer.borderColor = UIColor.black.cgColor
        rightButton.layer.cornerRadius = 8

        let upButton = UIButton(type: UIButton.ButtonType.system)
        upButton.frame = CGRect(x: 200, y: 0, width: 40, height: 40)
        upButton.setTitle("↑", for: UIControl.State.normal)
        upButton.setTitleColor(UIColor.black, for: UIControl.State.normal)
        upButton.backgroundColor = UIColor.systemBackground
        upButton.addTarget(self, action: #selector(pressUp), for: UIControl.Event.touchUpInside)
        upButton.layer.borderWidth = 1
        upButton.layer.borderColor = UIColor.black.cgColor
        upButton.layer.cornerRadius = 8

        let downButton = UIButton(type: UIButton.ButtonType.system)
        downButton.frame = CGRect(x: 240, y: 0, width: 40, height: 40)
        downButton.setTitle("↓", for: UIControl.State.normal)
        downButton.setTitleColor(UIColor.black, for: UIControl.State.normal)
        downButton.backgroundColor = UIColor.systemBackground
        downButton.addTarget(self, action: #selector(pressDown), for: UIControl.Event.touchUpInside)
        downButton.layer.borderWidth = 1
        downButton.layer.borderColor = UIColor.black.cgColor
        downButton.layer.cornerRadius = 8

        let slashButton = UIButton(type: UIButton.ButtonType.system)
        slashButton.frame = CGRect(x: 280, y: 0, width: 40, height: 40)
        slashButton.setTitle("/", for: UIControl.State.normal)
        slashButton.setTitleColor(UIColor.black, for: UIControl.State.normal)
        slashButton.backgroundColor = UIColor.systemBackground
        slashButton.addTarget(self, action: #selector(pressSlash), for: UIControl.Event.touchUpInside)
        slashButton.layer.borderWidth = 1
        slashButton.layer.borderColor = UIColor.black.cgColor
        slashButton.layer.cornerRadius = 8

        let dashButton = UIButton(type: UIButton.ButtonType.system)
        dashButton.frame = CGRect(x: 320, y: 0, width: 40, height: 40)
        dashButton.setTitle("-", for: UIControl.State.normal)
        dashButton.setTitleColor(UIColor.black, for: UIControl.State.normal)
        dashButton.backgroundColor = UIColor.systemBackground
        dashButton.addTarget(self, action: #selector(pressDash), for: UIControl.Event.touchUpInside)
        dashButton.layer.borderWidth = 1
        dashButton.layer.borderColor = UIColor.black.cgColor
        dashButton.layer.cornerRadius = 8

        // let dotButton = UIButton(type: UIButton.ButtonType.system)
        // dotButton.frame = CGRect(x: 360, y: 0, width: 40, height: 40)
        // dotButton.setTitle(".", for: UIControl.State.normal)
        // dotButton.setTitleColor(UIColor.black, for: UIControl.State.normal)
        // dotButton.backgroundColor = UIColor.systemBackground
        // dotButton.addTarget(self, action: #selector(pressDot), for: UIControl.Event.touchUpInside)
        // dotButton.layer.borderWidth = 1
        // dotButton.layer.borderColor = UIColor.black.cgColor
        // dotButton.layer.cornerRadius = 8

        let pasteButton = UIButton(type: UIButton.ButtonType.system)
        pasteButton.frame = CGRect(x: 400, y: 0, width: 40, height: 40)
        pasteButton.setTitle("P", for: UIControl.State.normal)
        pasteButton.setTitleColor(UIColor.black, for: UIControl.State.normal)
        pasteButton.backgroundColor = UIColor.systemBackground
        pasteButton.addTarget(self, action: #selector(pressPaste), for: UIControl.Event.touchUpInside)
        pasteButton.layer.borderWidth = 1
        pasteButton.layer.borderColor = UIColor.black.cgColor
        pasteButton.layer.cornerRadius = 8

        let kbView = UIView(frame: CGRect(x: 0, y: 0, width: screenWidth, height: 40))
        // kbView.backgroundColor = UIColor.systemBlue
        kbView.addSubview(escButton)
        kbView.addSubview(tabButton)
        kbView.addSubview(ctrlButton)
        kbView.addSubview(leftButton)
        kbView.addSubview(rightButton)
        kbView.addSubview(upButton)
        kbView.addSubview(downButton)
        kbView.addSubview(slashButton)
        kbView.addSubview(dashButton)
        // kbView.addSubview(dotButton)
        kbView.addSubview(pasteButton)
        textView.inputAccessoryView = kbView

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
        textView.insertText("\u{1b}")
    }

    @objc func pressTab() {
        // textView.insertText("\t")
        textView.insertText("\u{09}")
    }

    @objc func pressCtrl() {}

    @objc func pressLeft() {
        textView.insertText("\u{1b}[D")
    }

    @objc func pressRight() {
        textView.insertText("\u{1b}[C")
    }

    @objc func pressUp() {
        textView.insertText("\u{1b}[A")
    }

    @objc func pressDown() {
        textView.insertText("\u{1b}[B")
    }

    @objc func pressSlash() {
        textView.insertText("/")
    }

    @objc func pressDash() {
        textView.insertText("-")
    }

    @objc func pressDot() {
        textView.insertText(".")
    }

    @objc func pressPaste() {
        textView.insertText(UIPasteboard.general.string!)
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
