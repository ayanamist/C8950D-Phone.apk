.class public Lcom/android/phone/HWPhoneProvider;
.super Landroid/content/ContentProvider;
.source "HWPhoneProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/HWPhoneProvider$DatabaseHelper;,
        Lcom/android/phone/HWPhoneProvider$IPAccount;,
        Lcom/android/phone/HWPhoneProvider$RejectMessage;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "hwphone.db"

.field private static final DATABASE_VERSION:I = 0x2

.field public static final DISABLED_IPNUMBER_ID:I = 0x1

.field public static final DISABLED_IPNUMBER_ID1:I = 0x1

.field public static final DISABLED_IPNUMBER_ID2:I = 0x2

.field private static final IPACCOUNT_TABLE:Ljava/lang/String; = "ip_accounts"

.field private static final IPCALLS:I = 0x1

.field private static final IPCALLS_CURRENT:I = 0x3

.field public static final IPCALLS_CURRENT_URI:Landroid/net/Uri; = null

.field private static final IPCALLS_ID:I = 0x2

.field private static final IPCALLS_SUB1:I = 0x4

.field private static final IPCALLS_SUB1_CURRENT:I = 0x6

.field public static final IPCALLS_SUB1_CURRENT_URI:Landroid/net/Uri; = null

.field public static final IPCALLS_SUB1_URI:Landroid/net/Uri; = null

.field private static final IPCALLS_SUB2:I = 0x5

.field private static final IPCALLS_SUB2_CURRENT:I = 0x7

.field public static final IPCALLS_SUB2_CURRENT_URI:Landroid/net/Uri; = null

.field public static final IPCALLS_SUB2_URI:Landroid/net/Uri; = null

.field public static final IPCALLS_URI:Landroid/net/Uri; = null

.field private static final IPCALL_CONFIG_Attribute_DEFAULT:Ljava/lang/String; = "default"

.field private static final IPCALL_CONFIG_Attribute_SUBSCRIPTION:Ljava/lang/String; = "subscription"

.field private static final IPCALL_CONFIG_Attribute_VALUE:Ljava/lang/String; = "value"

.field private static final IPCALL_CONFIG_SUB1_TAG:Ljava/lang/String; = "ipnumber1"

.field private static final IPCALL_CONFIG_SUB2_TAG:Ljava/lang/String; = "ipnumber2"

.field private static final IPCALL_CONFIG_TAG:Ljava/lang/String; = "ipnumber"

.field private static final IPCALL_IS_DEFAULT_NUMBER:Ljava/lang/String; = "1"

.field private static final LOG_V:Z = true

.field private static final MESSAGE_CONFIG_TAG:Ljava/lang/String; = "message"

.field private static final MESSAGE_PROJECTION:[Ljava/lang/String; = null

.field public static final MESSAGE_URI:Landroid/net/Uri; = null

.field public static final NO_IPNUMBER_DATA:Ljava/lang/String; = ""

.field public static final NO_IPNUMBER_ID:I = 0x0

.field public static final PREF_CURRENT_IP_ACCOUNT:Ljava/lang/String; = "pref_current_ip_account"

.field public static final PREF_CURRENT_IP_ACCOUNT1:Ljava/lang/String; = "pref_current_ip_account1"

.field public static final PREF_CURRENT_IP_ACCOUNT2:Ljava/lang/String; = "pref_current_ip_account2"

.field public static final PREF_CURRENT_IP_ACCOUNT_ID:Ljava/lang/String; = "pref_current_ip_account_id"

.field public static final PREF_CURRENT_IP_ACCOUNT_ID1:Ljava/lang/String; = "pref_current_ip_account_id1"

.field public static final PREF_CURRENT_IP_ACCOUNT_ID2:Ljava/lang/String; = "pref_current_ip_account_id2"

.field public static final PREF_FILE_NAME:Ljava/lang/String; = "IPCallSettings"

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final REJECT_MESSAGE:I = 0xa

.field private static final REJECT_MESSAGE_ID:I = 0xb

.field private static final REJECT_MESSAGE_TABLE:Ljava/lang/String; = "reject_message"

.field private static final SUB1:I = 0x0

.field private static final SUB2:I = 0x1

.field private static TAG:Ljava/lang/String;

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mDatabase:Lcom/android/phone/HWPhoneProvider$DatabaseHelper;

.field private mDbObserver:Landroid/database/ContentObserver;

.field private mSubscription:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 38
    const-string v0, "HWPhoneProvider"

    sput-object v0, Lcom/android/phone/HWPhoneProvider;->TAG:Ljava/lang/String;

    .line 90
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/phone/HWPhoneProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 94
    sget-object v0, Lcom/android/phone/HWPhoneProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "hwphone"

    const-string v2, "accounts"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 95
    sget-object v0, Lcom/android/phone/HWPhoneProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "hwphone"

    const-string v2, "accounts/#"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 96
    sget-object v0, Lcom/android/phone/HWPhoneProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "hwphone"

    const-string v2, "accounts/current"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 98
    sget-object v0, Lcom/android/phone/HWPhoneProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "hwphone"

    const-string v2, "accounts1"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 99
    sget-object v0, Lcom/android/phone/HWPhoneProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "hwphone"

    const-string v2, "accounts2"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 100
    sget-object v0, Lcom/android/phone/HWPhoneProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "hwphone"

    const-string v2, "accounts1/current"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 101
    sget-object v0, Lcom/android/phone/HWPhoneProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "hwphone"

    const-string v2, "accounts2/current"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 104
    sget-object v0, Lcom/android/phone/HWPhoneProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "hwphone"

    const-string v2, "rejectmessage"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 105
    sget-object v0, Lcom/android/phone/HWPhoneProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "hwphone"

    const-string v2, "rejectmessage/#"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 115
    const-string v0, "content://hwphone/accounts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/HWPhoneProvider;->IPCALLS_URI:Landroid/net/Uri;

    .line 116
    const-string v0, "content://hwphone/accounts/current"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/HWPhoneProvider;->IPCALLS_CURRENT_URI:Landroid/net/Uri;

    .line 118
    const-string v0, "content://hwphone/accounts1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB1_URI:Landroid/net/Uri;

    .line 119
    const-string v0, "content://hwphone/accounts2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB2_URI:Landroid/net/Uri;

    .line 120
    const-string v0, "content://hwphone/accounts1/current"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB1_CURRENT_URI:Landroid/net/Uri;

    .line 121
    const-string v0, "content://hwphone/accounts2/current"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB2_CURRENT_URI:Landroid/net/Uri;

    .line 123
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v6

    const-string v1, "_data"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/HWPhoneProvider;->PROJECTION:[Ljava/lang/String;

    .line 127
    const-string v0, "content://hwphone/rejectmessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/HWPhoneProvider;->MESSAGE_URI:Landroid/net/Uri;

    .line 128
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v6

    const-string v1, "_data"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/HWPhoneProvider;->MESSAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/HWPhoneProvider;->mSubscription:I

    .line 135
    new-instance v0, Lcom/android/phone/HWPhoneProvider$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/HWPhoneProvider$1;-><init>(Lcom/android/phone/HWPhoneProvider;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/HWPhoneProvider;->mDbObserver:Landroid/database/ContentObserver;

    .line 975
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/HWPhoneProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/phone/HWPhoneProvider;->mSubscription:I

    return v0
.end method

.method static synthetic access$100(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 37
    invoke-static {p0, p1, p2, p3}, Lcom/android/phone/HWPhoneProvider;->updateDatabase(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method private static getCustomMessage(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;I)V
    .registers 11
    .parameter "db"
    .parameter "context"
    .parameter "resourceId"

    .prologue
    .line 670
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 673
    .local v3, xml:Landroid/content/res/XmlResourceParser;
    :cond_8
    :goto_8
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    .local v4, xmlEventType:I
    const/4 v5, 0x1

    if-eq v4, v5, :cond_6e

    .line 674
    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    const-string v5, "message"

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 677
    const/4 v5, 0x0

    const-string v6, "value"

    const/4 v7, 0x0

    invoke-interface {v3, v5, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 678
    .local v2, resId:I
    if-nez v2, :cond_6f

    .line 679
    const/4 v5, 0x0

    const-string v6, "value"

    invoke-interface {v3, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 684
    .local v0, customMessage:Ljava/lang/String;
    :goto_2f
    if-eqz v0, :cond_8

    .line 685
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INSERT INTO reject_message (_data) VALUES(\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\');"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 688
    sget-object v5, Lcom/android/phone/HWPhoneProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pre install custom Message "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_65} :catch_66

    goto :goto_8

    .line 693
    .end local v0           #customMessage:Ljava/lang/String;
    .end local v2           #resId:I
    .end local v3           #xml:Landroid/content/res/XmlResourceParser;
    .end local v4           #xmlEventType:I
    :catch_66
    move-exception v1

    .line 694
    .local v1, e:Ljava/lang/Exception;
    sget-object v5, Lcom/android/phone/HWPhoneProvider;->TAG:Ljava/lang/String;

    const-string v6, "Error while trying to get message from custom_message_config"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 696
    .end local v1           #e:Ljava/lang/Exception;
    :cond_6e
    return-void

    .line 681
    .restart local v2       #resId:I
    .restart local v3       #xml:Landroid/content/res/XmlResourceParser;
    .restart local v4       #xmlEventType:I
    :cond_6f
    :try_start_6f
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_76} :catch_66

    move-result-object v0

    .restart local v0       #customMessage:Ljava/lang/String;
    goto :goto_2f
.end method

.method public static getDefaultIPDialNumberData(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 944
    const-string v1, "IPCallSettings"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 947
    .local v0, preference:Landroid/content/SharedPreferences;
    const-string v1, "pref_current_ip_account"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDefaultIPDialNumberData(Landroid/content/Context;I)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "sub"

    .prologue
    .line 953
    const-string v1, "IPCallSettings"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 955
    .local v0, preference:Landroid/content/SharedPreferences;
    if-nez p1, :cond_12

    .line 957
    const-string v1, "pref_current_ip_account1"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 961
    :goto_11
    return-object v1

    :cond_12
    const-string v1, "pref_current_ip_account2"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_11
.end method

.method public static getDefaultIPDialNumberID(Landroid/content/Context;)I
    .registers 4
    .parameter "context"

    .prologue
    .line 916
    const-string v1, "IPCallSettings"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 919
    .local v0, preference:Landroid/content/SharedPreferences;
    const-string v1, "pref_current_ip_account_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getDefaultIPDialNumberID(Landroid/content/Context;I)I
    .registers 6
    .parameter "context"
    .parameter "sub"

    .prologue
    const/4 v3, 0x0

    .line 925
    const-string v1, "IPCallSettings"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 927
    .local v0, preference:Landroid/content/SharedPreferences;
    if-nez p1, :cond_11

    .line 929
    const-string v1, "pref_current_ip_account_id1"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 933
    :goto_10
    return v1

    :cond_11
    const-string v1, "pref_current_ip_account_id2"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_10
.end method

.method private static getPreInstalledIPNumber(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;I)V
    .registers 15
    .parameter "db"
    .parameter "context"
    .parameter "resourceId"

    .prologue
    .line 558
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 562
    .local v7, xml:Landroid/content/res/XmlResourceParser;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v9

    if-eqz v9, :cond_12b

    .line 563
    const/4 v4, 0x2

    .line 564
    .local v4, ipNumberID:I
    const/4 v2, 0x0

    .line 565
    .local v2, hasSetDefaultIPNumber1:Z
    const/4 v3, 0x0

    .line 566
    .local v3, hasSetDefaultIPNumber2:Z
    :cond_15
    :goto_15
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    .local v8, xmlEventType:I
    const/4 v9, 0x1

    if-eq v8, v9, :cond_a7

    .line 568
    const/4 v9, 0x2

    if-ne v8, v9, :cond_a8

    const-string v9, "ipnumber1"

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a8

    .line 571
    const-string v6, ""

    .line 572
    .local v6, preInstallIPNumber:Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "value"

    invoke-interface {v7, v9, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 573
    if-eqz v6, :cond_15

    const-string v9, ""

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_15

    .line 575
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "INSERT INTO ip_accounts (_data,_subscription) VALUES(\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\',"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ");"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 578
    add-int/lit8 v4, v4, 0x1

    .line 579
    if-nez v2, :cond_7f

    .line 581
    const/4 v9, 0x0

    const-string v10, "default"

    invoke-interface {v7, v9, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 582
    .local v5, isDefault:Ljava/lang/String;
    if-eqz v5, :cond_7f

    const-string v9, "1"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7f

    .line 585
    const/4 v9, 0x0

    invoke-static {p1, v4, v6, v9}, Lcom/android/phone/HWPhoneProvider;->updateCurrentIPDialNumber(Landroid/content/Context;ILjava/lang/String;I)V

    .line 586
    const/4 v2, 0x1

    .line 591
    .end local v5           #isDefault:Ljava/lang/String;
    :cond_7f
    sget-object v9, Lcom/android/phone/HWPhoneProvider;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pre install ipnumber "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "--SUB1"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9d} :catch_9f

    goto/16 :goto_15

    .line 655
    .end local v2           #hasSetDefaultIPNumber1:Z
    .end local v3           #hasSetDefaultIPNumber2:Z
    .end local v4           #ipNumberID:I
    .end local v6           #preInstallIPNumber:Ljava/lang/String;
    .end local v7           #xml:Landroid/content/res/XmlResourceParser;
    .end local v8           #xmlEventType:I
    :catch_9f
    move-exception v0

    .line 656
    .local v0, e:Ljava/lang/Exception;
    sget-object v9, Lcom/android/phone/HWPhoneProvider;->TAG:Ljava/lang/String;

    const-string v10, "Error while trying to get ipnumber from ipcall_config"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 658
    .end local v0           #e:Ljava/lang/Exception;
    :cond_a7
    return-void

    .line 595
    .restart local v2       #hasSetDefaultIPNumber1:Z
    .restart local v3       #hasSetDefaultIPNumber2:Z
    .restart local v4       #ipNumberID:I
    .restart local v7       #xml:Landroid/content/res/XmlResourceParser;
    .restart local v8       #xmlEventType:I
    :cond_a8
    const/4 v9, 0x2

    if-ne v8, v9, :cond_15

    :try_start_ab
    const-string v9, "ipnumber2"

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 598
    const-string v6, ""

    .line 599
    .restart local v6       #preInstallIPNumber:Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "value"

    invoke-interface {v7, v9, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 600
    if-eqz v6, :cond_15

    const-string v9, ""

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_15

    .line 601
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "INSERT INTO ip_accounts (_data,_subscription) VALUES(\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\',"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ");"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 604
    add-int/lit8 v4, v4, 0x1

    .line 605
    if-nez v3, :cond_10b

    .line 607
    const/4 v9, 0x0

    const-string v10, "default"

    invoke-interface {v7, v9, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 608
    .restart local v5       #isDefault:Ljava/lang/String;
    if-eqz v5, :cond_10b

    const-string v9, "1"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10b

    .line 611
    const/4 v9, 0x1

    invoke-static {p1, v4, v6, v9}, Lcom/android/phone/HWPhoneProvider;->updateCurrentIPDialNumber(Landroid/content/Context;ILjava/lang/String;I)V

    .line 612
    const/4 v3, 0x1

    .line 617
    .end local v5           #isDefault:Ljava/lang/String;
    :cond_10b
    sget-object v9, Lcom/android/phone/HWPhoneProvider;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pre install ipnumber "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "--SUB2"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 624
    .end local v2           #hasSetDefaultIPNumber1:Z
    .end local v3           #hasSetDefaultIPNumber2:Z
    .end local v4           #ipNumberID:I
    .end local v6           #preInstallIPNumber:Ljava/lang/String;
    .end local v8           #xmlEventType:I
    :cond_12b
    const/4 v4, 0x1

    .line 625
    .restart local v4       #ipNumberID:I
    const/4 v1, 0x0

    .line 626
    .local v1, hasSetDefaultIPNumber:Z
    :cond_12d
    :goto_12d
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    .restart local v8       #xmlEventType:I
    const/4 v9, 0x1

    if-eq v8, v9, :cond_a7

    .line 627
    const/4 v9, 0x2

    if-ne v8, v9, :cond_12d

    const-string v9, "ipnumber"

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12d

    .line 630
    const-string v6, ""

    .line 631
    .restart local v6       #preInstallIPNumber:Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "value"

    invoke-interface {v7, v9, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 632
    if-eqz v6, :cond_12d

    const-string v9, ""

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_12d

    .line 633
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "INSERT INTO ip_accounts (_data) VALUES(\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\');"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 636
    add-int/lit8 v4, v4, 0x1

    .line 637
    if-nez v1, :cond_18b

    .line 638
    const/4 v9, 0x0

    const-string v10, "default"

    invoke-interface {v7, v9, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 639
    .restart local v5       #isDefault:Ljava/lang/String;
    if-eqz v5, :cond_18b

    const-string v9, "1"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18b

    .line 641
    invoke-static {p1, v4, v6}, Lcom/android/phone/HWPhoneProvider;->updateCurrentIPDialNumber(Landroid/content/Context;ILjava/lang/String;)V

    .line 642
    const/4 v1, 0x1

    .line 647
    .end local v5           #isDefault:Ljava/lang/String;
    :cond_18b
    sget-object v9, Lcom/android/phone/HWPhoneProvider;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pre install ipnumber "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a3
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_1a3} :catch_9f

    goto :goto_12d
.end method

.method public static updateCurrentIPDialNumber(Landroid/content/Context;ILjava/lang/String;)V
    .registers 13
    .parameter "context"
    .parameter "id"
    .parameter "account"

    .prologue
    .line 709
    if-eqz p1, :cond_6

    .line 710
    invoke-static {p0, p1, p2}, Lcom/android/phone/HWPhoneProvider;->updateCurrentIPDialNumberToXMLFile(Landroid/content/Context;ILjava/lang/String;)V

    .line 755
    :cond_5
    :goto_5
    return-void

    .line 715
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/HWPhoneProvider;->IPCALLS_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/HWPhoneProvider;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 720
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_34

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_34

    .line 721
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 722
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 723
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 727
    :cond_34
    if-eqz v6, :cond_39

    .line 728
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 731
    :cond_39
    invoke-static {p0}, Lcom/android/phone/HWPhoneProvider;->getDefaultIPDialNumberID(Landroid/content/Context;)I

    move-result v8

    .line 732
    .local v8, saved_id:I
    invoke-static {p0}, Lcom/android/phone/HWPhoneProvider;->getDefaultIPDialNumberData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 734
    .local v7, saved_account:Ljava/lang/String;
    if-nez v8, :cond_4c

    .line 736
    invoke-static {p0, p1, p2}, Lcom/android/phone/HWPhoneProvider;->updateCurrentIPDialNumberToXMLFile(Landroid/content/Context;ILjava/lang/String;)V

    .line 752
    :cond_46
    :goto_46
    if-eqz v6, :cond_5

    .line 753
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 738
    :cond_4c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/HWPhoneProvider;->IPCALLS_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/HWPhoneProvider;->PROJECTION:[Ljava/lang/String;

    const-string v3, "_id = ? and _data = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x1

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 747
    if-eqz v6, :cond_75

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_46

    .line 748
    :cond_75
    invoke-static {p0, p1, p2}, Lcom/android/phone/HWPhoneProvider;->updateCurrentIPDialNumberToXMLFile(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_46
.end method

.method public static updateCurrentIPDialNumber(Landroid/content/Context;ILjava/lang/String;I)V
    .registers 14
    .parameter "context"
    .parameter "id"
    .parameter "account"
    .parameter "sub"

    .prologue
    .line 761
    if-eqz p1, :cond_6

    .line 763
    invoke-static {p0, p1, p2, p3}, Lcom/android/phone/HWPhoneProvider;->updateCurrentIPDialNumberToXMLFile(Landroid/content/Context;ILjava/lang/String;I)V

    .line 821
    :cond_5
    :goto_5
    return-void

    .line 766
    :cond_6
    if-nez p3, :cond_4e

    .line 768
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB1_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/HWPhoneProvider;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 775
    .local v6, c:Landroid/database/Cursor;
    :goto_17
    if-eqz v6, :cond_36

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_36

    .line 777
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 778
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 779
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 781
    :cond_36
    if-eqz v6, :cond_3b

    .line 783
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 785
    :cond_3b
    invoke-static {p0, p3}, Lcom/android/phone/HWPhoneProvider;->getDefaultIPDialNumberID(Landroid/content/Context;I)I

    move-result v8

    .line 786
    .local v8, saved_id:I
    invoke-static {p0, p3}, Lcom/android/phone/HWPhoneProvider;->getDefaultIPDialNumberData(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 788
    .local v7, saved_account:Ljava/lang/String;
    if-nez v8, :cond_5e

    .line 791
    invoke-static {p0, p1, p2, p3}, Lcom/android/phone/HWPhoneProvider;->updateCurrentIPDialNumberToXMLFile(Landroid/content/Context;ILjava/lang/String;I)V

    .line 816
    :cond_48
    :goto_48
    if-eqz v6, :cond_5

    .line 818
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 772
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #saved_account:Ljava/lang/String;
    .end local v8           #saved_id:I
    :cond_4e
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB2_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/HWPhoneProvider;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .restart local v6       #c:Landroid/database/Cursor;
    goto :goto_17

    .line 795
    .restart local v7       #saved_account:Ljava/lang/String;
    .restart local v8       #saved_id:I
    :cond_5e
    if-nez p3, :cond_8d

    .line 797
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB1_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/HWPhoneProvider;->PROJECTION:[Ljava/lang/String;

    const-string v3, "_id = ? and _data = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x1

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 800
    if-eqz v6, :cond_89

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_48

    .line 802
    :cond_89
    invoke-static {p0, p1, p2, p3}, Lcom/android/phone/HWPhoneProvider;->updateCurrentIPDialNumberToXMLFile(Landroid/content/Context;ILjava/lang/String;I)V

    goto :goto_48

    .line 805
    :cond_8d
    const/4 v0, 0x1

    if-ne p3, v0, :cond_48

    .line 807
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB2_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/HWPhoneProvider;->PROJECTION:[Ljava/lang/String;

    const-string v3, "_id = ? and _data = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x1

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 810
    if-eqz v6, :cond_b9

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_48

    .line 812
    :cond_b9
    invoke-static {p0, p1, p2, p3}, Lcom/android/phone/HWPhoneProvider;->updateCurrentIPDialNumberToXMLFile(Landroid/content/Context;ILjava/lang/String;I)V

    goto :goto_48
.end method

.method private static updateCurrentIPDialNumberToXMLFile(Landroid/content/Context;ILjava/lang/String;)V
    .registers 10
    .parameter "context"
    .parameter "id"
    .parameter "ipAccount"

    .prologue
    .line 833
    const-string v4, "IPCallSettings"

    const/4 v5, 0x3

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 835
    .local v3, preference:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 837
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_1b

    .line 839
    const-string v4, "pref_current_ip_account"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 840
    const-string v4, "pref_current_ip_account_id"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 860
    :cond_17
    :goto_17
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 861
    return-void

    .line 842
    :cond_1b
    invoke-static {p0}, Lcom/android/phone/HWPhoneProvider;->getDefaultIPDialNumberID(Landroid/content/Context;)I

    move-result v1

    .line 843
    .local v1, id_old:I
    invoke-static {p0}, Lcom/android/phone/HWPhoneProvider;->getDefaultIPDialNumberData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 845
    .local v2, ipAccount_old:Ljava/lang/String;
    if-eqz p2, :cond_17

    if-ne p1, v1, :cond_2d

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 848
    :cond_2d
    const-string v4, "pref_current_ip_account_id"

    invoke-interface {v0, v4, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 849
    const-string v4, "pref_current_ip_account"

    invoke-interface {v0, v4, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 853
    sget-object v4, Lcom/android/phone/HWPhoneProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCurrentIPDialNumberToXMLFile : id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ipnumber = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method private static updateCurrentIPDialNumberToXMLFile(Landroid/content/Context;ILjava/lang/String;I)V
    .registers 11
    .parameter "context"
    .parameter "id"
    .parameter "ipAccount"
    .parameter "sub"

    .prologue
    .line 866
    const-string v4, "IPCallSettings"

    const/4 v5, 0x3

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 868
    .local v3, preference:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 869
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_28

    .line 872
    if-nez p3, :cond_1d

    .line 874
    const-string v4, "pref_current_ip_account1"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 875
    const-string v4, "pref_current_ip_account_id1"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 906
    :cond_19
    :goto_19
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 907
    return-void

    .line 879
    :cond_1d
    const-string v4, "pref_current_ip_account2"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 880
    const-string v4, "pref_current_ip_account_id2"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_19

    .line 885
    :cond_28
    invoke-static {p0, p3}, Lcom/android/phone/HWPhoneProvider;->getDefaultIPDialNumberID(Landroid/content/Context;I)I

    move-result v1

    .line 886
    .local v1, id_old:I
    invoke-static {p0, p3}, Lcom/android/phone/HWPhoneProvider;->getDefaultIPDialNumberData(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 887
    .local v2, ipAccount_old:Ljava/lang/String;
    if-eqz p2, :cond_19

    if-ne p1, v1, :cond_3a

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 890
    :cond_3a
    if-nez p3, :cond_69

    .line 892
    const-string v4, "pref_current_ip_account_id1"

    invoke-interface {v0, v4, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 893
    const-string v4, "pref_current_ip_account1"

    invoke-interface {v0, v4, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 902
    :goto_46
    sget-object v4, Lcom/android/phone/HWPhoneProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCurrentIPDialNumberToXMLFile : id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ipnumber = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 897
    :cond_69
    const-string v4, "pref_current_ip_account_id2"

    invoke-interface {v0, v4, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 898
    const-string v4, "pref_current_ip_account2"

    invoke-interface {v0, v4, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_46
.end method

.method private static updateDatabase(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 9
    .parameter "context"
    .parameter "db"
    .parameter "fromVersion"
    .parameter "toVersion"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 174
    if-eq p3, v4, :cond_2c

    .line 175
    sget-object v0, Lcom/android/phone/HWPhoneProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal update request. Got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 178
    :cond_2c
    if-le p2, p3, :cond_5c

    .line 179
    sget-object v0, Lcom/android/phone/HWPhoneProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal update request: can\'t downgrade from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Did you forget to wipe data?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 184
    :cond_5c
    if-ge p2, v3, :cond_c5

    .line 186
    sget-object v0, Lcom/android/phone/HWPhoneProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v0, "DROP TABLE IF EXISTS ip_accounts"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 190
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 191
    const-string v0, "CREATE TABLE IF NOT EXISTS ip_accounts (_id INTEGER PRIMARY KEY,_data TEXT,_subscription INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 197
    const-string v0, "INSERT INTO ip_accounts (_data,_subscription) VALUES(\'\',0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 198
    const-string v0, "INSERT INTO ip_accounts (_data,_subscription) VALUES(\'\',1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 200
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v3, v0, v1}, Lcom/android/phone/HWPhoneProvider;->updateCurrentIPDialNumber(Landroid/content/Context;ILjava/lang/String;I)V

    .line 201
    const-string v0, ""

    invoke-static {p0, v4, v0, v3}, Lcom/android/phone/HWPhoneProvider;->updateCurrentIPDialNumber(Landroid/content/Context;ILjava/lang/String;I)V

    .line 216
    :goto_af
    const v0, 0x7f050013

    invoke-static {p1, p0, v0}, Lcom/android/phone/HWPhoneProvider;->getPreInstalledIPNumber(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;I)V

    .line 218
    const-string v0, "DROP TABLE IF EXISTS reject_message"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 219
    const-string v0, "CREATE TABLE IF NOT EXISTS reject_message (_id INTEGER PRIMARY KEY,_data TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 225
    const v0, 0x7f05000b

    invoke-static {p1, p0, v0}, Lcom/android/phone/HWPhoneProvider;->getCustomMessage(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;I)V

    .line 228
    :cond_c5
    return-void

    .line 205
    :cond_c6
    const-string v0, "CREATE TABLE IF NOT EXISTS ip_accounts (_id INTEGER PRIMARY KEY,_data TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 210
    const-string v0, "INSERT INTO ip_accounts (_data) VALUES(\'\');"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 212
    const-string v0, ""

    invoke-static {p0, v3, v0}, Lcom/android/phone/HWPhoneProvider;->updateCurrentIPDialNumber(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_af
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 12
    .parameter "uri"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    const/4 v7, 0x1

    .line 422
    const/4 v0, 0x0

    .line 423
    .local v0, count:I
    sget-object v5, Lcom/android/phone/HWPhoneProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 424
    .local v3, match:I
    const/4 v4, 0x0

    .line 426
    .local v4, where:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/HWPhoneProvider;->mDatabase:Lcom/android/phone/HWPhoneProvider$DatabaseHelper;

    if-nez v5, :cond_f

    move v1, v0

    .line 513
    .end local v0           #count:I
    .local v1, count:I
    :goto_e
    return v1

    .line 430
    .end local v1           #count:I
    .restart local v0       #count:I
    :cond_f
    iget-object v5, p0, Lcom/android/phone/HWPhoneProvider;->mDatabase:Lcom/android/phone/HWPhoneProvider$DatabaseHelper;

    invoke-virtual {v5}, Lcom/android/phone/HWPhoneProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 432
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v5

    if-eqz v5, :cond_ea

    .line 433
    packed-switch v3, :pswitch_data_176

    .line 509
    :goto_22
    :pswitch_22
    if-lez v0, :cond_30

    .line 510
    invoke-virtual {p0}, Lcom/android/phone/HWPhoneProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_30
    move v1, v0

    .line 513
    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_e

    .line 435
    .end local v1           #count:I
    .restart local v0       #count:I
    :pswitch_32
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/phone/HWPhoneProvider;->mSubscription:I

    .line 436
    const-string v4, "_id <> 1 and _subscription = 0"

    .line 437
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 438
    move-object p2, v4

    .line 443
    :goto_3e
    const-string v5, "ip_accounts"

    invoke-virtual {v2, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 445
    goto :goto_22

    .line 440
    :cond_45
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_3e

    .line 447
    :pswitch_63
    iput v7, p0, Lcom/android/phone/HWPhoneProvider;->mSubscription:I

    .line 448
    const-string v4, "_id <> 2 and _subscription = 1"

    .line 449
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 450
    move-object p2, v4

    .line 454
    :goto_6e
    const-string v5, "ip_accounts"

    invoke-virtual {v2, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 457
    goto :goto_22

    .line 452
    :cond_75
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_6e

    .line 461
    :pswitch_93
    const-string v5, "reject_message"

    invoke-virtual {v2, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 463
    goto :goto_22

    .line 466
    :pswitch_9a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 467
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c6

    .line 468
    move-object p2, v4

    .line 472
    :goto_be
    const-string v5, "reject_message"

    invoke-virtual {v2, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_22

    .line 470
    :cond_c6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_be

    .line 478
    :cond_ea
    sparse-switch v3, :sswitch_data_18a

    goto/16 :goto_22

    .line 480
    :sswitch_ef
    const-string v4, "_id <> 1"

    .line 481
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_100

    .line 482
    move-object p2, v4

    .line 486
    :goto_f8
    const-string v5, "ip_accounts"

    invoke-virtual {v2, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 488
    goto/16 :goto_22

    .line 484
    :cond_100
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_f8

    .line 491
    :sswitch_11e
    const-string v5, "reject_message"

    invoke-virtual {v2, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 493
    goto/16 :goto_22

    .line 496
    :sswitch_126
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 497
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_152

    .line 498
    move-object p2, v4

    .line 502
    :goto_14a
    const-string v5, "reject_message"

    invoke-virtual {v2, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_22

    .line 500
    :cond_152
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_14a

    .line 433
    :pswitch_data_176
    .packed-switch 0x4
        :pswitch_32
        :pswitch_63
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_93
        :pswitch_9a
    .end packed-switch

    .line 478
    :sswitch_data_18a
    .sparse-switch
        0x1 -> :sswitch_ef
        0xa -> :sswitch_11e
        0xb -> :sswitch_126
    .end sparse-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 316
    sget-object v0, Lcom/android/phone/HWPhoneProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 333
    :pswitch_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :pswitch_12
    return-object v1

    .line 316
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_12
        :pswitch_12
        :pswitch_a
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_a
        :pswitch_a
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 14
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    .line 339
    iget-object v6, p0, Lcom/android/phone/HWPhoneProvider;->mDatabase:Lcom/android/phone/HWPhoneProvider$DatabaseHelper;

    if-nez v6, :cond_b

    move-object v2, v5

    .line 417
    :cond_a
    :goto_a
    return-object v2

    .line 344
    :cond_b
    sget-object v6, Lcom/android/phone/HWPhoneProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 346
    .local v1, match:I
    const/4 v2, 0x0

    .line 347
    .local v2, newUri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/phone/HWPhoneProvider;->mDatabase:Lcom/android/phone/HWPhoneProvider$DatabaseHelper;

    invoke-virtual {v6}, Lcom/android/phone/HWPhoneProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 349
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez p2, :cond_1f

    .line 350
    new-instance p2, Landroid/content/ContentValues;

    .end local p2
    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 353
    .restart local p2
    :cond_1f
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v6

    if-eqz v6, :cond_a1

    .line 354
    sparse-switch v1, :sswitch_data_e4

    .line 387
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid URI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 357
    :sswitch_45
    iput v7, p0, Lcom/android/phone/HWPhoneProvider;->mSubscription:I

    .line 358
    const-string v6, "_subscription"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 359
    const-string v6, "ip_accounts"

    const-string v7, "name"

    invoke-virtual {v0, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 360
    .local v3, rowId:J
    cmp-long v6, v3, v8

    if-lez v6, :cond_62

    .line 361
    sget-object v6, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB1_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 413
    :cond_62
    :goto_62
    if-eqz v2, :cond_a

    .line 414
    invoke-virtual {p0}, Lcom/android/phone/HWPhoneProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_a

    .line 368
    .end local v3           #rowId:J
    :sswitch_70
    iput v10, p0, Lcom/android/phone/HWPhoneProvider;->mSubscription:I

    .line 369
    const-string v6, "_subscription"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 370
    const-string v6, "ip_accounts"

    const-string v7, "name"

    invoke-virtual {v0, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 371
    .restart local v3       #rowId:J
    cmp-long v6, v3, v8

    if-lez v6, :cond_62

    .line 372
    sget-object v6, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB2_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_62

    .line 379
    .end local v3           #rowId:J
    :sswitch_8e
    const-string v6, "reject_message"

    const-string v7, "name"

    invoke-virtual {v0, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 380
    .restart local v3       #rowId:J
    cmp-long v6, v3, v8

    if-lez v6, :cond_62

    .line 381
    sget-object v6, Lcom/android/phone/HWPhoneProvider;->MESSAGE_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_62

    .line 390
    .end local v3           #rowId:J
    :cond_a1
    sparse-switch v1, :sswitch_data_f2

    .line 409
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid URI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 392
    :sswitch_bd
    const-string v6, "ip_accounts"

    const-string v7, "name"

    invoke-virtual {v0, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 393
    .restart local v3       #rowId:J
    cmp-long v6, v3, v8

    if-lez v6, :cond_62

    .line 394
    sget-object v6, Lcom/android/phone/HWPhoneProvider;->IPCALLS_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_62

    .line 401
    .end local v3           #rowId:J
    :sswitch_d0
    const-string v6, "reject_message"

    const-string v7, "name"

    invoke-virtual {v0, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 402
    .restart local v3       #rowId:J
    cmp-long v6, v3, v8

    if-lez v6, :cond_62

    .line 403
    sget-object v6, Lcom/android/phone/HWPhoneProvider;->MESSAGE_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_62

    .line 354
    nop

    :sswitch_data_e4
    .sparse-switch
        0x4 -> :sswitch_45
        0x5 -> :sswitch_70
        0xa -> :sswitch_8e
    .end sparse-switch

    .line 390
    :sswitch_data_f2
    .sparse-switch
        0x1 -> :sswitch_bd
        0xa -> :sswitch_d0
    .end sparse-switch
.end method

.method public onCreate()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 152
    new-instance v0, Lcom/android/phone/HWPhoneProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/android/phone/HWPhoneProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "hwphone.db"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/HWPhoneProvider$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/HWPhoneProvider;->mDatabase:Lcom/android/phone/HWPhoneProvider$DatabaseHelper;

    .line 154
    invoke-virtual {p0}, Lcom/android/phone/HWPhoneProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/HWPhoneProvider;->IPCALLS_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/phone/HWPhoneProvider;->mDbObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 156
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 157
    invoke-virtual {p0}, Lcom/android/phone/HWPhoneProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB1_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/phone/HWPhoneProvider;->mDbObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/phone/HWPhoneProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/HWPhoneProvider;->IPCALLS_SUB2_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/phone/HWPhoneProvider;->mDbObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 161
    :cond_45
    return v3
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 18
    .parameter "uri"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 233
    sget-object v2, Lcom/android/phone/HWPhoneProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v11

    .line 235
    .local v11, table:I
    iget-object v2, p0, Lcom/android/phone/HWPhoneProvider;->mDatabase:Lcom/android/phone/HWPhoneProvider$DatabaseHelper;

    if-nez v2, :cond_c

    .line 236
    const/4 v9, 0x0

    .line 310
    :cond_b
    :goto_b
    return-object v9

    .line 238
    :cond_c
    iget-object v2, p0, Lcom/android/phone/HWPhoneProvider;->mDatabase:Lcom/android/phone/HWPhoneProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/phone/HWPhoneProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 239
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 240
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "limit"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 242
    .local v8, limit:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_11a

    .line 244
    packed-switch v11, :pswitch_data_186

    .line 276
    :pswitch_2a
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 246
    :pswitch_47
    const-string v2, "ip_accounts"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 247
    const-string v2, "distinct"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_58

    .line 248
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 249
    :cond_58
    const-string v2, "_subscription = 0"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 304
    :cond_5d
    :goto_5d
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 306
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_b

    .line 307
    invoke-virtual {p0}, Lcom/android/phone/HWPhoneProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v9, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_b

    .line 252
    .end local v9           #c:Landroid/database/Cursor;
    :pswitch_77
    const-string v2, "ip_accounts"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 253
    const-string v2, "distinct"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_88

    .line 254
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 255
    :cond_88
    const-string v2, "_subscription = 1"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_5d

    .line 258
    :pswitch_8e
    invoke-virtual {p0}, Lcom/android/phone/HWPhoneProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/phone/HWPhoneProvider;->getDefaultIPDialNumberID(Landroid/content/Context;I)I

    move-result v10

    .line 259
    .local v10, id:I
    const-string v2, "ip_accounts"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_subscription"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_5d

    .line 263
    .end local v10           #id:I
    :pswitch_ca
    invoke-virtual {p0}, Lcom/android/phone/HWPhoneProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/phone/HWPhoneProvider;->getDefaultIPDialNumberID(Landroid/content/Context;I)I

    move-result v10

    .line 264
    .restart local v10       #id:I
    const-string v2, "ip_accounts"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_subscription"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_5d

    .line 269
    .end local v10           #id:I
    :pswitch_107
    const-string v2, "reject_message"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 270
    const-string v2, "distinct"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5d

    .line 271
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    goto/16 :goto_5d

    .line 279
    :cond_11a
    sparse-switch v11, :sswitch_data_198

    .line 300
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 281
    :sswitch_13a
    const-string v2, "ip_accounts"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 282
    const-string v2, "distinct"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5d

    .line 283
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    goto/16 :goto_5d

    .line 287
    :sswitch_14d
    invoke-virtual {p0}, Lcom/android/phone/HWPhoneProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/HWPhoneProvider;->getDefaultIPDialNumberID(Landroid/content/Context;)I

    move-result v10

    .line 288
    .restart local v10       #id:I
    const-string v2, "ip_accounts"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_5d

    .line 293
    .end local v10           #id:I
    :sswitch_172
    const-string v2, "reject_message"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 294
    const-string v2, "distinct"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5d

    .line 295
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    goto/16 :goto_5d

    .line 244
    nop

    :pswitch_data_186
    .packed-switch 0x4
        :pswitch_47
        :pswitch_77
        :pswitch_8e
        :pswitch_ca
        :pswitch_2a
        :pswitch_2a
        :pswitch_107
    .end packed-switch

    .line 279
    :sswitch_data_198
    .sparse-switch
        0x1 -> :sswitch_13a
        0x3 -> :sswitch_14d
        0xa -> :sswitch_172
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 13
    .parameter "uri"
    .parameter "initialValues"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 520
    const/4 v0, 0x0

    .line 521
    .local v0, count:I
    sget-object v5, Lcom/android/phone/HWPhoneProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 524
    .local v3, match:I
    iget-object v5, p0, Lcom/android/phone/HWPhoneProvider;->mDatabase:Lcom/android/phone/HWPhoneProvider$DatabaseHelper;

    if-nez v5, :cond_d

    move v1, v0

    .line 545
    .end local v0           #count:I
    .local v1, count:I
    :goto_c
    return v1

    .line 529
    .end local v1           #count:I
    .restart local v0       #count:I
    :cond_d
    sget-object v5, Lcom/android/phone/HWPhoneProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update for uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", initValues="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v5, p0, Lcom/android/phone/HWPhoneProvider;->mDatabase:Lcom/android/phone/HWPhoneProvider$DatabaseHelper;

    invoke-virtual {v5}, Lcom/android/phone/HWPhoneProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 533
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    packed-switch v3, :pswitch_data_54

    .line 542
    :goto_38
    if-lez v0, :cond_46

    .line 543
    invoke-virtual {p0}, Lcom/android/phone/HWPhoneProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_46
    move v1, v0

    .line 545
    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_c

    .line 535
    .end local v1           #count:I
    .restart local v0       #count:I
    :pswitch_48
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 536
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "reject_message"

    invoke-virtual {v2, v5, v4, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 537
    goto :goto_38

    .line 533
    :pswitch_data_54
    .packed-switch 0xa
        :pswitch_48
    .end packed-switch
.end method
