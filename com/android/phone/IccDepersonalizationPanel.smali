.class public Lcom/android/phone/IccDepersonalizationPanel;
.super Lcom/android/phone/IccPanel;
.source "IccDepersonalizationPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/IccDepersonalizationPanel$5;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_ICC_DEPERSONALIZATION_RESULT:I = 0x64


# instance fields
.field private final ENTRY:I

.field private final ERROR:I

.field private final IN_PROGRESS:I

.field private final SUCCESS:I

.field private mDismissButton:Landroid/widget/Button;

.field mDismissListener:Landroid/view/View$OnClickListener;

.field private mEntryPanel:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;

.field private mPersoSubtype:I

.field private mPersoSubtypeText:Landroid/widget/TextView;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPinEntry:Landroid/widget/EditText;

.field private mPinEntryWatcher:Landroid/text/TextWatcher;

.field private mStatusPanel:Landroid/widget/LinearLayout;

.field private mStatusText:Landroid/widget/TextView;

.field private mSubscription:I

.field private mUnlockButton:Landroid/widget/Button;

.field mUnlockListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/phone/IccPanel;-><init>(Landroid/content/Context;)V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->ENTRY:I

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->IN_PROGRESS:I

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->ERROR:I

    .line 72
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->SUCCESS:I

    .line 75
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$1;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$1;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPinEntryWatcher:Landroid/text/TextWatcher;

    .line 91
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$2;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$2;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mHandler:Landroid/os/Handler;

    .line 193
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$3;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$3;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    .line 489
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$4;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$4;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mDismissListener:Landroid/view/View$OnClickListener;

    .line 121
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtype:I

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "subtype"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/phone/IccPanel;-><init>(Landroid/content/Context;)V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->ENTRY:I

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->IN_PROGRESS:I

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->ERROR:I

    .line 72
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->SUCCESS:I

    .line 75
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$1;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$1;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPinEntryWatcher:Landroid/text/TextWatcher;

    .line 91
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$2;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$2;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mHandler:Landroid/os/Handler;

    .line 193
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$3;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$3;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    .line 489
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$4;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$4;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mDismissListener:Landroid/view/View$OnClickListener;

    .line 127
    iput p2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtype:I

    .line 128
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getDefaultSubscription()I

    move-result v0

    iput v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mSubscription:I

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 5
    .parameter "context"
    .parameter "subtype"
    .parameter "subscription"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/android/phone/IccPanel;-><init>(Landroid/content/Context;)V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->ENTRY:I

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->IN_PROGRESS:I

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->ERROR:I

    .line 72
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->SUCCESS:I

    .line 75
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$1;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$1;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPinEntryWatcher:Landroid/text/TextWatcher;

    .line 91
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$2;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$2;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mHandler:Landroid/os/Handler;

    .line 193
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$3;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$3;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    .line 489
    new-instance v0, Lcom/android/phone/IccDepersonalizationPanel$4;

    invoke-direct {v0, p0}, Lcom/android/phone/IccDepersonalizationPanel$4;-><init>(Lcom/android/phone/IccDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mDismissListener:Landroid/view/View$OnClickListener;

    .line 134
    iput p2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtype:I

    .line 135
    iput p3, p0, Lcom/android/phone/IccDepersonalizationPanel;->mSubscription:I

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/IccDepersonalizationPanel;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/IccDepersonalizationPanel;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/phone/IccDepersonalizationPanel;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/IccDepersonalizationPanel;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/phone/IccDepersonalizationPanel;->displayStatus(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/IccDepersonalizationPanel;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/phone/IccDepersonalizationPanel;->hideAlert()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/IccDepersonalizationPanel;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtype:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/IccDepersonalizationPanel;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/IccDepersonalizationPanel;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private displayStatus(I)V
    .registers 8
    .parameter "type"

    .prologue
    .line 209
    const/4 v1, 0x0

    .line 210
    .local v1, label:I
    invoke-static {}, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->values()[Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtype:I

    aget-object v2, v3, v4

    .line 211
    .local v2, persosubtype:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;
    sget-object v3, Lcom/android/phone/IccDepersonalizationPanel$5;->$SwitchMap$com$android$internal$telephony$IccCardApplicationStatus$PersoSubState:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_228

    .line 462
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported Perso Subtype :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/IccDepersonalizationPanel;->log(Ljava/lang/String;)V

    .line 482
    :goto_2a
    return-void

    .line 213
    :pswitch_2b
    packed-switch p1, :pswitch_data_258

    .line 465
    :goto_2e
    if-nez p1, :cond_214

    .line 466
    const-string v0, ""

    .line 467
    .local v0, displayText:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_205

    .line 468
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "De-Personalization for subtype "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtype:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on subscription: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/IccDepersonalizationPanel;->mSubscription:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/IccDepersonalizationPanel;->log(Ljava/lang/String;)V

    .line 470
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/IccDepersonalizationPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/IccDepersonalizationPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c02e1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/IccDepersonalizationPanel;->mSubscription:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 472
    iget-object v3, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtypeText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2a

    .line 215
    .end local v0           #displayText:Ljava/lang/String;
    :pswitch_98
    const v1, 0x7f0c004b

    .line 216
    goto :goto_2e

    .line 218
    :pswitch_9c
    const v1, 0x7f0c03e5

    .line 219
    goto :goto_2e

    .line 221
    :pswitch_a0
    const v1, 0x7f0c03e6

    .line 222
    goto :goto_2e

    .line 224
    :pswitch_a4
    const v1, 0x7f0c03e7

    goto :goto_2e

    .line 229
    :pswitch_a8
    packed-switch p1, :pswitch_data_264

    goto :goto_2e

    .line 231
    :pswitch_ac
    const v1, 0x7f0c004c

    .line 232
    goto/16 :goto_2e

    .line 234
    :pswitch_b1
    const v1, 0x7f0c0312

    .line 235
    goto/16 :goto_2e

    .line 237
    :pswitch_b6
    const v1, 0x7f0c0052

    .line 238
    goto/16 :goto_2e

    .line 240
    :pswitch_bb
    const v1, 0x7f0c005d

    goto/16 :goto_2e

    .line 245
    :pswitch_c0
    packed-switch p1, :pswitch_data_270

    goto/16 :goto_2e

    .line 247
    :pswitch_c5
    const v1, 0x7f0c0306

    .line 248
    goto/16 :goto_2e

    .line 250
    :pswitch_ca
    const v1, 0x7f0c0314

    .line 251
    goto/16 :goto_2e

    .line 253
    :pswitch_cf
    const v1, 0x7f0c0054

    .line 254
    goto/16 :goto_2e

    .line 256
    :pswitch_d4
    const v1, 0x7f0c005f

    goto/16 :goto_2e

    .line 261
    :pswitch_d9
    packed-switch p1, :pswitch_data_27c

    goto/16 :goto_2e

    .line 263
    :pswitch_de
    const v1, 0x7f0c004d

    .line 264
    goto/16 :goto_2e

    .line 266
    :pswitch_e3
    const v1, 0x7f0c0313

    .line 267
    goto/16 :goto_2e

    .line 269
    :pswitch_e8
    const v1, 0x7f0c0053

    .line 270
    goto/16 :goto_2e

    .line 272
    :pswitch_ed
    const v1, 0x7f0c005e

    goto/16 :goto_2e

    .line 277
    :pswitch_f2
    packed-switch p1, :pswitch_data_288

    goto/16 :goto_2e

    .line 279
    :pswitch_f7
    const v1, 0x7f0c0307

    .line 280
    goto/16 :goto_2e

    .line 282
    :pswitch_fc
    const v1, 0x7f0c0315

    .line 283
    goto/16 :goto_2e

    .line 285
    :pswitch_101
    const v1, 0x7f0c0055

    .line 286
    goto/16 :goto_2e

    .line 288
    :pswitch_106
    const v1, 0x7f0c0060

    goto/16 :goto_2e

    .line 293
    :pswitch_10b
    packed-switch p1, :pswitch_data_294

    goto/16 :goto_2e

    .line 295
    :pswitch_110
    const v1, 0x7f0c0308

    .line 296
    goto/16 :goto_2e

    .line 298
    :pswitch_115
    const v1, 0x7f0c0316

    .line 299
    goto/16 :goto_2e

    .line 301
    :pswitch_11a
    const v1, 0x7f0c0056

    .line 302
    goto/16 :goto_2e

    .line 304
    :pswitch_11f
    const v1, 0x7f0c0061

    goto/16 :goto_2e

    .line 309
    :pswitch_124
    packed-switch p1, :pswitch_data_2a0

    goto/16 :goto_2e

    .line 311
    :pswitch_129
    const v1, 0x7f0c0309

    .line 312
    goto/16 :goto_2e

    .line 314
    :pswitch_12e
    const v1, 0x7f0c0317

    .line 315
    goto/16 :goto_2e

    .line 317
    :pswitch_133
    const v1, 0x7f0c0057

    .line 318
    goto/16 :goto_2e

    .line 320
    :pswitch_138
    const v1, 0x7f0c0062

    goto/16 :goto_2e

    .line 325
    :pswitch_13d
    packed-switch p1, :pswitch_data_2ac

    goto/16 :goto_2e

    .line 327
    :pswitch_142
    const v1, 0x7f0c030a

    .line 328
    goto/16 :goto_2e

    .line 330
    :pswitch_147
    const v1, 0x7f0c0318

    .line 331
    goto/16 :goto_2e

    .line 333
    :pswitch_14c
    const v1, 0x7f0c0058

    .line 334
    goto/16 :goto_2e

    .line 336
    :pswitch_151
    const v1, 0x7f0c0063

    goto/16 :goto_2e

    .line 341
    :pswitch_156
    packed-switch p1, :pswitch_data_2b8

    goto/16 :goto_2e

    .line 343
    :pswitch_15b
    const v1, 0x7f0c030b

    .line 344
    goto/16 :goto_2e

    .line 346
    :pswitch_160
    const v1, 0x7f0c031a

    .line 347
    goto/16 :goto_2e

    .line 349
    :pswitch_165
    const v1, 0x7f0c005a

    .line 350
    goto/16 :goto_2e

    .line 352
    :pswitch_16a
    const v1, 0x7f0c0065

    goto/16 :goto_2e

    .line 357
    :pswitch_16f
    packed-switch p1, :pswitch_data_2c4

    goto/16 :goto_2e

    .line 359
    :pswitch_174
    const v1, 0x7f0c030c

    .line 360
    goto/16 :goto_2e

    .line 362
    :pswitch_179
    const v1, 0x7f0c0319

    .line 363
    goto/16 :goto_2e

    .line 365
    :pswitch_17e
    const v1, 0x7f0c0059

    .line 366
    goto/16 :goto_2e

    .line 368
    :pswitch_183
    const v1, 0x7f0c0064

    goto/16 :goto_2e

    .line 373
    :pswitch_188
    packed-switch p1, :pswitch_data_2d0

    goto/16 :goto_2e

    .line 375
    :pswitch_18d
    const v1, 0x7f0c030d

    .line 376
    goto/16 :goto_2e

    .line 378
    :pswitch_192
    const v1, 0x7f0c031b

    .line 379
    goto/16 :goto_2e

    .line 381
    :pswitch_197
    const v1, 0x7f0c005b

    .line 382
    goto/16 :goto_2e

    .line 384
    :pswitch_19c
    const v1, 0x7f0c0066

    goto/16 :goto_2e

    .line 396
    :pswitch_1a1
    packed-switch p1, :pswitch_data_2dc

    goto/16 :goto_2e

    .line 398
    :pswitch_1a6
    const v1, 0x7f0c0051

    .line 399
    goto/16 :goto_2e

    .line 401
    :pswitch_1ab
    const v1, 0x7f0c0050

    .line 402
    goto/16 :goto_2e

    .line 404
    :pswitch_1b0
    const v1, 0x7f0c005c

    .line 405
    goto/16 :goto_2e

    .line 407
    :pswitch_1b5
    const v1, 0x7f0c0067

    goto/16 :goto_2e

    .line 413
    :pswitch_1ba
    packed-switch p1, :pswitch_data_2e8

    goto/16 :goto_2e

    .line 415
    :pswitch_1bf
    const v1, 0x7f0c030e

    .line 416
    goto/16 :goto_2e

    .line 418
    :pswitch_1c4
    const v1, 0x7f0c031c

    .line 419
    goto/16 :goto_2e

    .line 421
    :pswitch_1c9
    const v1, 0x7f0c031d

    .line 422
    goto/16 :goto_2e

    .line 424
    :pswitch_1ce
    const v1, 0x7f0c031e

    goto/16 :goto_2e

    .line 429
    :pswitch_1d3
    packed-switch p1, :pswitch_data_2f4

    goto/16 :goto_2e

    .line 431
    :pswitch_1d8
    const v1, 0x7f0c030f

    .line 432
    goto/16 :goto_2e

    .line 434
    :pswitch_1dd
    const v1, 0x7f0c031c

    .line 435
    goto/16 :goto_2e

    .line 437
    :pswitch_1e2
    const v1, 0x7f0c031d

    .line 438
    goto/16 :goto_2e

    .line 440
    :pswitch_1e7
    const v1, 0x7f0c031f

    goto/16 :goto_2e

    .line 445
    :pswitch_1ec
    packed-switch p1, :pswitch_data_300

    goto/16 :goto_2e

    .line 447
    :pswitch_1f1
    const v1, 0x7f0c0311

    .line 448
    goto/16 :goto_2e

    .line 450
    :pswitch_1f6
    const v1, 0x7f0c031c

    .line 451
    goto/16 :goto_2e

    .line 453
    :pswitch_1fb
    const v1, 0x7f0c031d

    .line 454
    goto/16 :goto_2e

    .line 456
    :pswitch_200
    const v1, 0x7f0c0321

    goto/16 :goto_2e

    .line 474
    .restart local v0       #displayText:Ljava/lang/String;
    :cond_205
    invoke-virtual {p0}, Lcom/android/phone/IccDepersonalizationPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 475
    iget-object v3, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtypeText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2a

    .line 478
    .end local v0           #displayText:Ljava/lang/String;
    :cond_214
    iget-object v3, p0, Lcom/android/phone/IccDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 479
    iget-object v3, p0, Lcom/android/phone/IccDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 480
    iget-object v3, p0, Lcom/android/phone/IccDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2a

    .line 211
    :pswitch_data_228
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_a8
        :pswitch_c0
        :pswitch_d9
        :pswitch_f2
        :pswitch_10b
        :pswitch_124
        :pswitch_13d
        :pswitch_156
        :pswitch_16f
        :pswitch_188
        :pswitch_1a1
        :pswitch_1a1
        :pswitch_1a1
        :pswitch_1a1
        :pswitch_1a1
        :pswitch_1a1
        :pswitch_1a1
        :pswitch_1a1
        :pswitch_1ba
        :pswitch_1d3
        :pswitch_1ec
    .end packed-switch

    .line 213
    :pswitch_data_258
    .packed-switch 0x0
        :pswitch_98
        :pswitch_9c
        :pswitch_a0
        :pswitch_a4
    .end packed-switch

    .line 229
    :pswitch_data_264
    .packed-switch 0x0
        :pswitch_ac
        :pswitch_b1
        :pswitch_b6
        :pswitch_bb
    .end packed-switch

    .line 245
    :pswitch_data_270
    .packed-switch 0x0
        :pswitch_c5
        :pswitch_ca
        :pswitch_cf
        :pswitch_d4
    .end packed-switch

    .line 261
    :pswitch_data_27c
    .packed-switch 0x0
        :pswitch_de
        :pswitch_e3
        :pswitch_e8
        :pswitch_ed
    .end packed-switch

    .line 277
    :pswitch_data_288
    .packed-switch 0x0
        :pswitch_f7
        :pswitch_fc
        :pswitch_101
        :pswitch_106
    .end packed-switch

    .line 293
    :pswitch_data_294
    .packed-switch 0x0
        :pswitch_110
        :pswitch_115
        :pswitch_11a
        :pswitch_11f
    .end packed-switch

    .line 309
    :pswitch_data_2a0
    .packed-switch 0x0
        :pswitch_129
        :pswitch_12e
        :pswitch_133
        :pswitch_138
    .end packed-switch

    .line 325
    :pswitch_data_2ac
    .packed-switch 0x0
        :pswitch_142
        :pswitch_147
        :pswitch_14c
        :pswitch_151
    .end packed-switch

    .line 341
    :pswitch_data_2b8
    .packed-switch 0x0
        :pswitch_15b
        :pswitch_160
        :pswitch_165
        :pswitch_16a
    .end packed-switch

    .line 357
    :pswitch_data_2c4
    .packed-switch 0x0
        :pswitch_174
        :pswitch_179
        :pswitch_17e
        :pswitch_183
    .end packed-switch

    .line 373
    :pswitch_data_2d0
    .packed-switch 0x0
        :pswitch_18d
        :pswitch_192
        :pswitch_197
        :pswitch_19c
    .end packed-switch

    .line 396
    :pswitch_data_2dc
    .packed-switch 0x0
        :pswitch_1a6
        :pswitch_1ab
        :pswitch_1b0
        :pswitch_1b5
    .end packed-switch

    .line 413
    :pswitch_data_2e8
    .packed-switch 0x0
        :pswitch_1bf
        :pswitch_1c4
        :pswitch_1c9
        :pswitch_1ce
    .end packed-switch

    .line 429
    :pswitch_data_2f4
    .packed-switch 0x0
        :pswitch_1d8
        :pswitch_1dd
        :pswitch_1e2
        :pswitch_1e7
    .end packed-switch

    .line 445
    :pswitch_data_300
    .packed-switch 0x0
        :pswitch_1f1
        :pswitch_1f6
        :pswitch_1fb
        :pswitch_200
    .end packed-switch
.end method

.method private hideAlert()V
    .registers 3

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 486
    iget-object v0, p0, Lcom/android/phone/IccDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 487
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 497
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccDepersonalizationPanel] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    .line 140
    invoke-super {p0, p1}, Lcom/android/phone/IccPanel;->onCreate(Landroid/os/Bundle;)V

    .line 141
    const v2, 0x7f040023

    invoke-virtual {p0, v2}, Lcom/android/phone/IccDepersonalizationPanel;->setContentView(I)V

    .line 144
    const v2, 0x7f0700c6

    invoke-virtual {p0, v2}, Lcom/android/phone/IccDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    .line 145
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 146
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/phone/IccDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .local v1, text:Ljava/lang/CharSequence;
    move-object v0, v1

    .line 150
    check-cast v0, Landroid/text/Spannable;

    .line 151
    .local v0, span:Landroid/text/Spannable;
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPinEntryWatcher:Landroid/text/TextWatcher;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, 0x12

    invoke-interface {v0, v2, v5, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 153
    const v2, 0x7f0700c4

    invoke-virtual {p0, v2}, Lcom/android/phone/IccDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    .line 154
    const v2, 0x7f0700c5

    invoke-virtual {p0, v2}, Lcom/android/phone/IccDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPersoSubtypeText:Landroid/widget/TextView;

    .line 155
    invoke-direct {p0, v5}, Lcom/android/phone/IccDepersonalizationPanel;->displayStatus(I)V

    .line 157
    const v2, 0x7f0700c7

    invoke-virtual {p0, v2}, Lcom/android/phone/IccDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mUnlockButton:Landroid/widget/Button;

    .line 158
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mUnlockButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/IccDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v2, 0x7f0700c8

    invoke-virtual {p0, v2}, Lcom/android/phone/IccDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    .line 163
    invoke-virtual {p0}, Lcom/android/phone/IccDepersonalizationPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 164
    const-string v2, "Enabling \'Dismiss\' button..."

    invoke-direct {p0, v2}, Lcom/android/phone/IccDepersonalizationPanel;->log(Ljava/lang/String;)V

    .line 165
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 166
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/IccDepersonalizationPanel;->mDismissListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    :goto_91
    const v2, 0x7f0700c9

    invoke-virtual {p0, v2}, Lcom/android/phone/IccDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    .line 174
    const v2, 0x7f0700ca

    invoke-virtual {p0, v2}, Lcom/android/phone/IccDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    .line 176
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/IccDepersonalizationPanel;->mSubscription:I

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 177
    return-void

    .line 168
    :cond_b4
    const-string v2, "Removing \'Dismiss\' button..."

    invoke-direct {p0, v2}, Lcom/android/phone/IccDepersonalizationPanel;->log(Ljava/lang/String;)V

    .line 169
    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_91
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 186
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 187
    const/4 v0, 0x1

    .line 190
    :goto_4
    return v0

    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/phone/IccPanel;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_4
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 181
    invoke-super {p0}, Lcom/android/phone/IccPanel;->onStart()V

    .line 182
    return-void
.end method
