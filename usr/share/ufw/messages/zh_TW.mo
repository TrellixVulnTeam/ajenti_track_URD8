��    �      |  �   �
      p     q  "   s  b  �     �  (     #   @     d     z  &   �     �     �     �  *   �     )     1  )   8     b  "   z     �     �  /   �     �               "  #   5  #   Y  %   }      �     �     �     �               *  W   F     �  "   �     �  &   �  "   #     F     b     z     �     �  !   �     �  '   
     2     I  !   `     �  !   �  %   �     �     �  !        1  &   L  5   s  *   �  .   �  =        A  (   S  %   |  %   �  0   �  &   �        /   2     b  >   t  @   �     �     �       3   '  ,   [     �     �     �     �     �     �  '        3     H     a     x     �  +   �     �     �               0     @     U     h     y  	   �     �  %   �  /   �               :     H  &   g     �  !   �     �     �     �  1   �  /   )     Y  !   f     �  ,   �  T   �     &   
   �       �      �      �      �      �      !     !     :!  4   U!  $   �!     �!     �!     �!     
"     &"     C"  *   Z"  :   �"     �"      �"  )   �"     )#  #   F#  0   j#     �#     �#  
   �#     �#     �#     �#     �#     $     -$  %   E$     k$     �$     �$     �$  &   �$      %     %     %  4   #%     X%     `%     b%  �  f%     '     '  ]  *'  !   �*  +   �*     �*     �*     +  #   .+     R+     m+     +  -   �+     �+     �+  -   �+     �+     ,     .,     D,  0   Z,     �,     �,     �,     �,     �,     �,  %   -     9-     U-     g-     x-     �-     �-     �-  L   �-     #.     ;.     Z.  '   x.  '   �.     �.     �.     �.     /     )/     B/     [/     t/     �/     �/  $   �/     �/     �/  .   0  !   =0  $   _0     �0  !   �0  *   �0  5   �0  )   &1  $   P1  6   u1     �1  6   �1  $   �1  $   2  !   <2  &   ^2     �2  !   �2     �2  A   �2  @   3     \3     c3  !   {3  ;   �3  -   �3     4     4     24     J4     c4     y4     �4     �4     �4     �4     �4     5  )   5     G5  $   e5     �5     �5     �5     �5     �5     �5     �5     6     6  #   86  4   \6     �6      �6     �6  %   �6  !   7  "   (7  &   K7     r7     �7  	   �7  .   �7  ,   �7     �7     8     8  %   =8  A   c8  a   �8     9     9     39     C9     S9     c9     |9  !   �9     �9  B   �9  ,   :     B:  0   ]:     �:     �:     �:     �:  )   �:  5   ;  !   Q;     s;  0   �;     �;  &   �;  0   <     7<     J<     ]<     j<     n<     �<     �<     �<     �<     �<     =     =     <=     [=  *   n=     �=     �=     �=  3   �=     �=     �=     �=     <   K               2   `   h   �      �   �       �   �   
   �              o   �   G   7   Y               T   �       C   t      ;   y   6       �   x           �          �   �   c   :       ,   d       O       5   @   q   V   _      �   �       m   �   r   p   1   �   !   	   l           Z             �   �   '   8   �              *                 a      �      u      �   �   �   \   �       �   +           ]   "       �   )           z   �      �          �   N   %   $   v      F   i   n                �   �       9   e   f       M   0                  Q   ~       �       |   H   g   J   �   �       �   D   �   U           >       L          B       4       �   S      =   ?   k   -           A   {          }   �             I                 �   [      &   j   ^       #   �   �   �   (   E   �   P   �   s   /       �       R   w   3          W   b   X       .    
 
Error applying application rules. 
Usage: %(progname)s %(command)s

%(commands)s:
 %(enable)-31s enables the firewall
 %(disable)-31s disables the firewall
 %(default)-31s set default policy
 %(logging)-31s set logging to %(level)s
 %(allow)-31s add allow %(rule)s
 %(deny)-31s add deny %(rule)s
 %(reject)-31s add reject %(rule)s
 %(limit)-31s add limit %(rule)s
 %(delete)-31s delete %(urule)s
 %(insert)-31s insert %(urule)s at %(number)s
 %(reset)-31s reset firewall
 %(status)-31s show firewall status
 %(statusnum)-31s show firewall status as numbered list of %(rules)s
 %(statusverbose)-31s show verbose firewall status
 %(show)-31s show firewall report
 %(version)-31s display version information

%(appcommands)s:
 %(applist)-31s list application profiles
 %(appinfo)-31s show information on %(profile)s
 %(appupdate)-31s update %(profile)s
 %(appdefault)-31s set default application policy
  (skipped reloading firewall)  Attempted rules successfully unapplied.  Some rules could not be unapplied. %s is group writable! %s is world writable! '%(f)s' file '%(name)s' does not exist '%s' already exists. Aborting '%s' does not exist '%s' is not writable (be sure to update your rules accordingly) Aborted Action Adding IPv6 rule failed: IPv6 not enabled Available applications: Backing up '%(old)s' to '%(new)s'
 Bad destination address Bad interface name Bad interface name: can't use interface aliases Bad interface type Bad port Bad port '%s' Bad source address Cannot insert rule at position '%d' Cannot insert rule at position '%s' Cannot specify 'all' with '--add-new' Cannot specify insert and delete Checking ip6tables
 Checking iptables
 Checking raw ip6tables
 Checking raw iptables
 Checks disabled Command '%s' already exists Command may disrupt existing ssh connections. Proceed with operation (%(yes)s|%(no)s)?  Could not back out rule '%s' Could not delete non-existent rule Could not find '%s'. Aborting Could not find a profile matching '%s' Could not find executable for '%s' Could not find profile '%s' Could not find protocol Could not find rule '%d' Could not find rule '%s' Could not get listening status Could not get statistics for '%s' Could not load logging rules Could not normalize destination address Could not perform '%s' Could not set LOGLEVEL Could not update running firewall Couldn't find '%s' Couldn't find parent pid for '%s' Couldn't find pid (is /proc mounted?) Couldn't open '%s' for reading Couldn't stat '%s' Couldn't update application rules Couldn't update rules file Couldn't update rules file for logging Default %(direction)s policy changed to '%(policy)s'
 Default application policy changed to '%s' Default: %(in)s (incoming), %(out)s (outgoing) Deleting:
 %(rule)s
Proceed with operation (%(yes)s|%(no)s)?  Description: %s

 Duplicate profile '%s', using last found ERROR: this script should not be SGID ERROR: this script should not be SUID Firewall is active and enabled on system startup Firewall not enabled (skipping reload) Firewall reloaded Firewall stopped and disabled on system startup Found exact match Found multiple matches for '%s'. Please use exact profile name Found non-action/non-logtype match (%(xa)s/%(ya)s %(xl)s/%(yl)s) From IPv6 support not enabled Improper rule syntax Improper rule syntax ('%s' specified with app rule) Insert position '%s' is not a valid position Invalid '%s' clause Invalid 'from' clause Invalid 'port' clause Invalid 'proto' clause Invalid 'to' clause Invalid IP version '%s' Invalid IPv6 address with protocol '%s' Invalid command '%s' Invalid interface clause Invalid log level '%s' Invalid log type '%s' Invalid option Invalid policy '%(policy)s' for '%(chain)s' Invalid port with protocol '%s' Invalid ports in profile '%s' Invalid position ' Invalid position '%d' Invalid profile Invalid profile name Invalid token '%s' Logging disabled Logging enabled Logging:  Missing policy for '%s' Mixed IP versions for 'from' and 'to' Must specify 'tcp' or 'udp' with multiple ports Need 'from' or 'to' with '%s' Need 'to' or 'from' clause New profiles: No ports found in profile '%s' No rules found for application profile Option 'log' not allowed here Option 'log-all' not allowed here Port ranges must be numeric Port: Ports: Profile '%(fn)s' has empty required field '%(f)s' Profile '%(fn)s' missing required field '%(f)s' Profile: %s
 Profiles directory does not exist Protocol mismatch (from/to) Protocol mismatch with specified protocol %s Resetting all rules to installed defaults. Proceed with operation (%(yes)s|%(no)s)?  Resetting all rules to installed defaults. This may disrupt existing ssh connections. Proceed with operation (%(yes)s|%(no)s)?  Rule added Rule changed after normalization Rule deleted Rule inserted Rule updated Rules updated Rules updated (v6) Rules updated for profile '%s' Skipped reloading firewall Skipping '%(value)s': value too long for '%(field)s' Skipping '%s': also in /etc/services Skipping '%s': couldn't process Skipping '%s': couldn't stat Skipping '%s': field too long Skipping '%s': invalid name Skipping '%s': name too long Skipping '%s': too big Skipping '%s': too many files read already Skipping IPv6 application rule. Need at least iptables 1.4 Skipping adding existing rule Skipping inserting existing rule Skipping malformed tuple (bad length): %s Skipping malformed tuple: %s Skipping unsupported IPv6 '%s' rule Status: active
%(log)s
%(pol)s
%(app)s%(status)s Status: active%s Status: inactive Title: %s
 To Unknown policy '%s' Unsupported action '%s' Unsupported default policy Unsupported direction '%s' Unsupported policy '%s' Unsupported policy for direction '%s' Unsupported protocol '%s' WARN: '%s' is world readable WARN: '%s' is world writable Wrong number of arguments You need to be root to run this script n problem running running ufw-init uid is %(uid)s but '%(path)s' is owned by %(st_uid)s unknown y yes Project-Id-Version: ufw
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2012-07-29 09:48-0500
PO-Revision-Date: 2012-03-12 05:12+0000
Last-Translator: Rex Tsai <Unknown>
Language-Team: Chinese (traditional) <chinese-l10n@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2012-08-12 01:56+0000
X-Generator: Launchpad (build 15780)
Language: zh_TW
 
 
套用規則時出錯。 
用法: %(progname)s %(command)s

%(commands)s:
 %(enable)-31s 啟用防火牆
 %(disable)-31s 停用防火牆
 %(default)-31s 測定預設策略
 %(logging)-31s 設定紀錄到 %(level)s
 %(allow)-31s 新增允許 %(rule)s
 %(deny)-31s 新增拒絕(deny) %(rule)s
 %(reject)-31s 新增抵制(reject) %(rule)s
 %(limit)-31s 新增限制 %(rule)s
 %(delete)-31s 刪除 %(urule)s
 %(insert)-31s 插入 %(urule)s 到 %(number)s
 %(reset)-31s 重設防火牆
 %(status)-31s 顯示防火牆狀態
 %(statusnum)-31s 以條列 %(rules)s 顯示防火牆狀態
 %(statusverbose)-31s 顯示防火牆狀態明細
 %(show)-31s 顯示防火牆報告
 %(version)-31s 顯示版本資訊

%(appcommands)s:
 %(applist)-31s 顯示應用程式設定
 %(appinfo)-31s 顯示 %(profile)s 資訊
 %(appupdate)-31s 更新 %(profile)s
 %(appdefault)-31s 設定預設應用程式策略
  (跳過重新掛載的防火牆)  成功撤銷了對嘗試規則的套用。  一些規則無法被撤銷。 %s 是全組可寫屬性！ %s 是全局可寫屬性！ '%(f)s' 檔案 '%(name)s' 不存在 '%s' 已存在，取消中 “%s”不存在 %s 無法寫入 （請相應地更新你的防火牆規則） 中止 動作 添加 IPv6 規則失敗： IPv6 未被啟用 可用套用程序： 備份 '%(old)s' 到 '%(new)s
 錯誤的目標地址 錯誤的接口名稱 錯誤的接口名稱：無法使用接口別名 錯誤的接口類型 錯誤的埠號 錯誤的埠號 '%s' 錯誤的源地址 無法在'%d'處插入規則 無法在'%s'處插入規則 無法指定 'all' 使用 '--add-new' 無法指定插入和刪除 檢查 ip6tables
 檢查 iptables
 檢查原始的 ip6tables
 檢查原始的 iptables
 檢查被禁用 命令 '%s' 已經存在 指令可能會中斷現有的 ssh 連接。繼續執行(%(yes)s|%(no)s)？  無法備份規則 '%s' 無法刪除不存在的規則 無法找到 '%s'。取消中 無法為 '%s' 找到相相配的設定 無法找到針對 '%s' 的可執行檔 無法找到設定檔案 '%s' 無法找到協定 無法找到規則 '%d' 無法找到規則 '%s' 無法取得聽取狀態 無法取得 '%s' 數據 無法掛載日誌規則 無法標準化目標地址 無法執行 '%s' 無法設置 LOGLEVEL 無法更新正在運行的防火牆 無法找到 '%s' 無法找到 '%s' 的母行程 無法找到 pid (/proc 是否已經掛載？) 無法開啟 '%s' 進行讀操作 無法在 '%s' 上運行 stat 指令 無法更新套用程序規則 無法更新防火牆規則檔案 無法爲日誌記錄更新防火牆規則 預設的 %(direction)s 策略更改為 '%(policy)s'
 '%s' 的預設套用程序策略已改變 Default: %(in)s (入), %(out)s (出) 刪除中:
 %(rule)s
 繼續執行(%(yes)s|%(no)s)？  描述： %s

 重復的設定 “%s”，使用上次發現的設定 錯誤： 這個腳本無法被 SGID 錯誤： 這個腳本無法被 SUID 在系統啟動時啟用防火牆 未啟用防火牆(跳過重新載入) 已經重新載入防火牆 在系統啟動時停用防火牆 找到完全相配項 '%s' 找到了多個相配。清使用更精確的設定名稱。 Found non-action/non-logtype match (%(xa)s/%(ya)s %(xl)s/%(yl)s) 來自 IPv6 支持未被啟用 防火牆規則的語法不正確 不正確的規則語法 ('%s' 是由程序規則指定的) 插入位置‘%s'不是一個有效的位置 錯誤 '%s' 語法 無效的 'from' 從句 無效的 'port' 從句 無效的 'proto' 從句 無效的 'to' 從句 錯誤的 IP 協定版本 '%s' 無效的 IPv6 位址 '%s' 無效指令 '%s' 錯誤的介面語法 無效的日誌級別 '%s' 無效的日誌類型'%s' 無效選項 '%(chain)s' 的策略 '%(policy)s' 無效 '%s' 中使用無效的埠號 設定 '%s' 中含有無效的埠號 無效位置 ' 無效的位置 '%d' 無效設定檔案 無效的設定檔案名 無效的標記 '%s' 日誌被禁用 日誌被啟用 日誌:  針對  '%s' 的策略不存在 'from' 和 'to' 的 IP 版本不同 必須在復合的埠號中指定 'tcp' 或者 'udp' %s 需要 'from' 或 'to' 需要 'to' 或者 'from' 從句 新建設定檔案: 在設定 “%s” 中未發現埠號 沒有發現程序設定的規則 此處不允許使用 'log' 選項 此處不允許使用 'log-all' 選項 埠號範圍必須為數字 埠號: 埠號： 設定 '%(fn)s' 的必需欄位 '%(f)s' 為空 設定 '%(fn)s' 缺少必需的欄位 %(f)s' 設定: %s
 設定目錄不存在 from 和 to 的協定不相配 協定與指定的協定 %s 不相配 重設所有規則為預設值。繼續執行(%(yes)s|%(no)s)？  重設所有規則為預設，這可能影響現有 ssh 連線。繼續執行(%(yes)s|%(no)s)？  規則已添加 標準化後規則被改變 規則已刪除 規則已插入 規則已更新 防火牆規則已更新 規則已更新（v6） 設定 '%s' 的規則已經升級 跳過重新掛載防火牆 跳過 “%(value)s”： 對于 “%(field)s”來說，值過長 跳過 '%s'：在 /etc/services 中也存在 跳過 '%s'：無法執行 跳過‘%s’：無法查詢檔案狀態 (stat) 跳過 '%s'：域太長 跳過 '%s'：無效名稱 跳過 '%s'：名稱太長 跳過 '%s'：太大 跳過‘%s’：已經開啟太多檔案 忽略 IPv6 套用規則。需要 iptables 1.4 以上 跳過添加已經存在的規則 跳過插入已存在的規則 忽略錯誤的多員組（長度錯誤）： %s 跳過錯誤的元組： %s 忽略未被支持的 IPv6 '%s' 規則 狀態: 啓用
%(log)s
%(pol)s
%(app)s%(status)s 狀態： 啓用%s 狀態：不活動 標題：%s
 至 未知的策略 '%s' 不支持的動作'%s' 不支持的預設策略 不支持的方向 '%s' 策略 '%s' 未被支持 '%s' 方向不支持的策略 未被支持的協定 '%s' WARN: %s 是全局可讀屬性 WARN: %s 是全域可寫屬性 參數數目錯誤 只有 root 使用者才能運行此腳本 n 運行時出現問題 運行 ufw-init uid 是 %(uid)s 但是 '%(path)s' 屬於 %(st_uid)s 未知 y 是 