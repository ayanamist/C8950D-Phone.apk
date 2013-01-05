.class public Lcom/android/phone/ipcallsetting/IPCallUtils;
.super Ljava/lang/Object;
.source "IPCallUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;
    }
.end annotation


# static fields
.field public static final ACTION_PHONE_LOGNUMBER:Ljava/lang/String; = "android.intent.extra.PHONE_LOGNUMBER"

.field private static final EMPTY:Ljava/lang/String; = ""

#the value of this static final field might be set in the static constructor
.field public static final IS_SUPPORT_IPCALL:Z = false

.field public static final LOGV:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "IPCallUtils"

.field static final PROJECTION:[Ljava/lang/String;

.field private static sConnectionLogNumberMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 26
    const-string v0, "ro.config.hw_support_ipcall"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/ipcallsetting/IPCallUtils;->IS_SUPPORT_IPCALL:Z

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/ipcallsetting/IPCallUtils;->PROJECTION:[Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/ipcallsetting/IPCallUtils;->sConnectionLogNumberMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 217
    return-void
.end method

.method public static getLogNumber(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .registers 7
    .parameter "conn"

    .prologue
    .line 39
    if-nez p0, :cond_4

    .line 40
    const/4 v1, 0x0

    .line 58
    :goto_3
    return-object v1

    .line 43
    :cond_4
    const/4 v1, 0x0

    .line 44
    .local v1, logNumber:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, connHashCode:Ljava/lang/String;
    sget-object v3, Lcom/android/phone/ipcallsetting/IPCallUtils;->sConnectionLogNumberMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;

    .line 47
    .local v2, phoneAndLogNumber:Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;
    if-eqz v2, :cond_1b

    .line 48
    invoke-virtual {v2}, Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;->getLogNumber()Ljava/lang/String;

    move-result-object v1

    .line 52
    :cond_1b
    const-string v3, "IPCallUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLogNumber() logNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " connHashCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",sConnectionLogNumberMap.size() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/phone/ipcallsetting/IPCallUtils;->sConnectionLogNumberMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static removeConnection(Lcom/android/internal/telephony/Connection;)V
    .registers 5
    .parameter "conn"

    .prologue
    .line 66
    if-nez p0, :cond_3

    .line 79
    :goto_2
    return-void

    .line 70
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, connHashCode:Ljava/lang/String;
    sget-object v1, Lcom/android/phone/ipcallsetting/IPCallUtils;->sConnectionLogNumberMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v1, "IPCallUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeConnection() connHashCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",sConnectionLogNumberMap.size() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/ipcallsetting/IPCallUtils;->sConnectionLogNumberMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static removeConnection(Ljava/lang/String;)V
    .registers 11
    .parameter "phoneNumber"

    .prologue
    .line 86
    const/4 v2, 0x0

    .line 88
    .local v2, connHashCode:Ljava/lang/String;
    sget-object v7, Lcom/android/phone/ipcallsetting/IPCallUtils;->sConnectionLogNumberMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 90
    .local v0, cnlist:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;>;>;"
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_48

    .line 91
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 92
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 93
    .local v1, conn:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;

    .line 94
    .local v4, phoneAndLogNumber:Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;
    invoke-virtual {v4}, Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    .line 95
    .local v6, tempPhoneNumber:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;->getLogNumber()Ljava/lang/String;

    move-result-object v5

    .line 97
    .local v5, tempLogNumber:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    if-eqz v5, :cond_b

    const-string v7, ""

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 101
    move-object v2, v1

    .line 107
    .end local v1           #conn:Ljava/lang/String;
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;>;"
    .end local v4           #phoneAndLogNumber:Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;
    .end local v5           #tempLogNumber:Ljava/lang/String;
    .end local v6           #tempPhoneNumber:Ljava/lang/String;
    :cond_48
    if-eqz v2, :cond_4f

    .line 108
    sget-object v7, Lcom/android/phone/ipcallsetting/IPCallUtils;->sConnectionLogNumberMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_4f
    const-string v7, "IPCallUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "removeConnection() phoneNumber = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",sConnectionLogNumberMap.size() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/phone/ipcallsetting/IPCallUtils;->sConnectionLogNumberMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method

.method public static setConnectionAndPhoneNumber(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .registers 7
    .parameter "conn"
    .parameter "phoneNumber"

    .prologue
    .line 191
    if-eqz p0, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 215
    :cond_8
    :goto_8
    return-void

    .line 195
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, connHashCode:Ljava/lang/String;
    sget-object v2, Lcom/android/phone/ipcallsetting/IPCallUtils;->sConnectionLogNumberMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 198
    const-string v2, "IPCallUtils"

    const-string v3, "reduplicate connection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 203
    :cond_21
    new-instance v1, Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;

    const-string v2, ""

    invoke-direct {v1, p1, v2}, Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .local v1, phoneAndLogNumber:Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;
    sget-object v2, Lcom/android/phone/ipcallsetting/IPCallUtils;->sConnectionLogNumberMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v2, "IPCallUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setConnectionAndPhoneNumber() connHashCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , phoneNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",sConnectionLogNumberMap.size() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/phone/ipcallsetting/IPCallUtils;->sConnectionLogNumberMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public static setLogNumber(Ljava/lang/String;Landroid/content/Intent;)V
    .registers 4
    .parameter "phoneNumber"
    .parameter "intent"

    .prologue
    .line 141
    const-string v1, "android.intent.extra.PHONE_LOGNUMBER"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, logNumber:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 144
    invoke-static {p0, v0}, Lcom/android/phone/ipcallsetting/IPCallUtils;->setLogNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :goto_f
    return-void

    .line 146
    :cond_10
    invoke-static {p0}, Lcom/android/phone/ipcallsetting/IPCallUtils;->removeConnection(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static setLogNumber(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "phoneNumber"
    .parameter "logNumber"

    .prologue
    .line 156
    sget-object v5, Lcom/android/phone/ipcallsetting/IPCallUtils;->sConnectionLogNumberMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 158
    .local v0, cnlist:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;>;>;"
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_75

    .line 159
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 160
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;

    .line 161
    .local v2, phoneAndLogNumber:Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;
    invoke-virtual {v2}, Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, tempPhoneNumber:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;->getLogNumber()Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, tempLogNumber:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    if-eqz v3, :cond_a

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, ""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 169
    invoke-virtual {v2, p1}, Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;->setLogNumber(Ljava/lang/String;)V

    .line 172
    const-string v5, "IPCallUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setLogNumber() phoneNumber = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",logNumber = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",sConnectionLogNumberMap.size() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/phone/ipcallsetting/IPCallUtils;->sConnectionLogNumberMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;>;"
    .end local v2           #phoneAndLogNumber:Lcom/android/phone/ipcallsetting/IPCallUtils$PhoneAndLogNumber;
    .end local v3           #tempLogNumber:Ljava/lang/String;
    .end local v4           #tempPhoneNumber:Ljava/lang/String;
    :cond_75
    return-void
.end method

.method public static setLogNumberToIntent(Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 4
    .parameter "oldIntent"
    .parameter "newIntent"

    .prologue
    .line 126
    const-string v1, "android.intent.extra.PHONE_LOGNUMBER"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, logNumber:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 129
    const-string v1, "android.intent.extra.PHONE_LOGNUMBER"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    :cond_11
    return-object p1
.end method
