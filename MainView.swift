import SwiftUI

struct MainView: View {
    @Namespace var namespace
    @State var show = false
    var body: some View {
        
        NavigationView {
            List {
               NavigationLink(destination: IssueDetailView(issueTitle: "Forgot MyCI password")) {
                     Text("Forgot MyCI password")}
                NavigationLink(destination: IssueDetailView(issueTitle: "Duo related issues")) {
                      Text("Duo related issues")}
                 NavigationLink(destination: IssueDetailView(issueTitle: "Connect a personal device to CI Wi-Fi")) {
                       Text("Connect a personal device to CI Wi-Fi")}
                   NavigationLink(destination: IssueDetailView(issueTitle: "Connect a game console to CI Wi-Fi")) {
                         Text("Connect a game console to CI Wi-Fi")}
                    NavigationLink(destination: IssueDetailView(issueTitle: "Printer issues")) {
                           Text("Printer connection issues")}
                     NavigationLink(destination: IssueDetailView(issueTitle: "Projector issues")) {
                             Text("Projector display issues")}
                }
            .navigationBarTitle("Top Issues")
                    }
                    }
                    }
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
                                            }
                                    }
struct IssueDetailView: View {
    var issueTitle: String
    var body: some View {
        VStack {
            Text("Solution for \(issueTitle)")
                .font(.headline)
            Text(getSolutionForIssue(issueTitle))
                .padding()
                            }
        .navigationBarTitle(issueTitle)
                        }
    func getSolutionForIssue(_ issueTitle: String) -> String {
        switch issueTitle {
        case "Forgot MyCI password":
            return "Go to 'https://ciapps.csuci.edu/ResetDolphinPassword' and fill out the text boxes with your information to reset your password."
          case "Duo related issues":
              return "Contact the Shared Services Solution Center at solutioncenter@csuci.edu or 805-437-8552 (x: 8552) to request assistance. They will assist you with the steps needed to use your new or temporarily assigned device and de-register the old one."
            case "Connect a personal device to CI Wi-Fi":
                return "Select the CI Wi-Fi network and log in with your MyCI credentials. ex. richard.yao021 \nThen, if prompted, accept the configuration profile."
              case "Connect a game console to CI Wi-Fi":
                  return "Game consoles are only able to be connected through the 'CI_GUEST' Wi-Fi network. You must also configure acess through MyCI.\n\nLogin to MyCI and select 'Wireless Settings' under 'MY LINKS'.\n\nSelect Start Here from the menu and select ‘Create Device’.\n\nEnter your game console's MAC Address, Device Name, and Device Type. Click the 'CREATE' button."
               case "Printer issues":
                   return "Unplug the printer from the wall and throw it out the nearest window."
                 case "Projector issues":
                     return "On a Windows machine, make sure to press F10 or the Windows key + P to bring up the display options. \nOn a Mac, go to System Properties, Display, and configure options there. "
   
        // default, no solution found, dummy. don't remove
        default:
            return "No solution found for \(issueTitle)."
            }
                        }
                        }
