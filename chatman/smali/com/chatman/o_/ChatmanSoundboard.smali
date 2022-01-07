.class public Lcom/chatman/o_/ChatmanSoundboard;
.super Landroid/app/ListActivity;
.source "ChatmanSoundboard.java"


# static fields
.field private static final ACTIVATE_COUNT:I = 0x32

.field private static final DEFAULT_SOUND:I = 0x0

.field private static final DEFAULT_THEME:I = 0x0

.field private static final SHAKE_SENSITIVITY:F = 2.5f


# instance fields
.field private adp:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currTheme:I

.field private mAccel:F

.field private mAccelCurrent:F

.field private mAccelLast:F

.field private final mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private playCount:I

.field private player:Landroid/media/MediaPlayer;

.field private soundFiles:[Ljava/lang/String;

.field private soundNames:[Ljava/lang/String;

.field private themes:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "chatman.mp3"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    .line 41
    const-string v2, "dota.mp3"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ghostnappa.mp3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ghostnappa.mp3"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/chatman/o_/ChatmanSoundboard;->soundFiles:[Ljava/lang/String;

    .line 45
    iput v3, p0, Lcom/chatman/o_/ChatmanSoundboard;->playCount:I

    .line 191
    new-instance v0, Lcom/chatman/o_/ChatmanSoundboard$1;

    invoke-direct {v0, p0}, Lcom/chatman/o_/ChatmanSoundboard$1;-><init>(Lcom/chatman/o_/ChatmanSoundboard;)V

    iput-object v0, p0, Lcom/chatman/o_/ChatmanSoundboard;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/chatman/o_/ChatmanSoundboard;)F
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/chatman/o_/ChatmanSoundboard;->mAccelCurrent:F

    return v0
.end method

.method static synthetic access$1(Lcom/chatman/o_/ChatmanSoundboard;F)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/chatman/o_/ChatmanSoundboard;->mAccelLast:F

    return-void
.end method

.method static synthetic access$10(Lcom/chatman/o_/ChatmanSoundboard;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/chatman/o_/ChatmanSoundboard;->themes:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/chatman/o_/ChatmanSoundboard;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/chatman/o_/ChatmanSoundboard;->currTheme:I

    return v0
.end method

.method static synthetic access$2(Lcom/chatman/o_/ChatmanSoundboard;F)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/chatman/o_/ChatmanSoundboard;->mAccelCurrent:F

    return-void
.end method

.method static synthetic access$3(Lcom/chatman/o_/ChatmanSoundboard;)F
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/chatman/o_/ChatmanSoundboard;->mAccelLast:F

    return v0
.end method

.method static synthetic access$4(Lcom/chatman/o_/ChatmanSoundboard;)F
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/chatman/o_/ChatmanSoundboard;->mAccel:F

    return v0
.end method

.method static synthetic access$5(Lcom/chatman/o_/ChatmanSoundboard;F)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/chatman/o_/ChatmanSoundboard;->mAccel:F

    return-void
.end method

.method static synthetic access$6(Lcom/chatman/o_/ChatmanSoundboard;I)Z
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/chatman/o_/ChatmanSoundboard;->playSound(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7(Lcom/chatman/o_/ChatmanSoundboard;I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/chatman/o_/ChatmanSoundboard;->currTheme:I

    return-void
.end method

.method static synthetic access$8(Lcom/chatman/o_/ChatmanSoundboard;I)V
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/chatman/o_/ChatmanSoundboard;->playCount:I

    return-void
.end method

.method static synthetic access$9(Lcom/chatman/o_/ChatmanSoundboard;)Landroid/widget/ArrayAdapter;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/chatman/o_/ChatmanSoundboard;->adp:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method private chooseTheme()V
    .locals 4

    .prologue
    .line 171
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 172
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f030001

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 173
    iget-object v1, p0, Lcom/chatman/o_/ChatmanSoundboard;->themes:[Ljava/lang/String;

    iget v2, p0, Lcom/chatman/o_/ChatmanSoundboard;->currTheme:I

    new-instance v3, Lcom/chatman/o_/ChatmanSoundboard$3;

    invoke-direct {v3, p0}, Lcom/chatman/o_/ChatmanSoundboard$3;-><init>(Lcom/chatman/o_/ChatmanSoundboard;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 186
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 187
    return-void
.end method

.method private playSound(I)Z
    .locals 12
    .param p1, "id"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 109
    iget v0, p0, Lcom/chatman/o_/ChatmanSoundboard;->playCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/chatman/o_/ChatmanSoundboard;->playCount:I

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/chatman/o_/ChatmanSoundboard;->themes:[Ljava/lang/String;

    iget v1, p0, Lcom/chatman/o_/ChatmanSoundboard;->currTheme:I

    aget-object v9, v0, v1

    .line 114
    .local v9, "theme":Ljava/lang/String;
    const-string v0, "Mensly"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/chatman/o_/ChatmanSoundboard;->playCount:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    .line 115
    const-string v9, "Picard"

    .line 116
    const-string v8, "shutup.mp3"

    .line 117
    .local v8, "sound":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chatman/o_/ChatmanSoundboard;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 118
    const-string v1, "shutup_unlocked"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 119
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/chatman/o_/ChatmanSoundboard;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 130
    invoke-virtual {p0}, Lcom/chatman/o_/ChatmanSoundboard;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 131
    const-string v1, "%s%c%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 132
    aput-object v9, v2, v3

    const/4 v3, 0x1

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 133
    aput-object v8, v2, v3

    .line 131
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    .line 135
    .local v7, "fd":Landroid/content/res/AssetFileDescriptor;
    iget-object v0, p0, Lcom/chatman/o_/ChatmanSoundboard;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 136
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 135
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 137
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 139
    iget-object v0, p0, Lcom/chatman/o_/ChatmanSoundboard;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 140
    iget-object v0, p0, Lcom/chatman/o_/ChatmanSoundboard;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    move v0, v11

    .line 145
    .end local v7    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v8    # "sound":Ljava/lang/String;
    .end local v9    # "theme":Ljava/lang/String;
    :goto_1
    return v0

    .line 121
    .restart local v9    # "theme":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/chatman/o_/ChatmanSoundboard;->soundFiles:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 122
    const-string v9, "Picard"

    .line 123
    const-string v8, "shutup.mp3"

    .restart local v8    # "sound":Ljava/lang/String;
    goto :goto_0

    .line 126
    .end local v8    # "sound":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/chatman/o_/ChatmanSoundboard;->soundFiles:[Ljava/lang/String;

    aget-object v8, v0, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v8    # "sound":Ljava/lang/String;
    goto :goto_0

    .line 143
    .end local v8    # "sound":Ljava/lang/String;
    .end local v9    # "theme":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v6, v0

    .local v6, "e":Ljava/lang/Exception;
    move v0, v10

    .line 145
    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const v7, 0x411ce80a

    const/4 v6, 0x0

    .line 59
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/chatman/o_/ChatmanSoundboard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 62
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/chatman/o_/ChatmanSoundboard;->player:Landroid/media/MediaPlayer;

    .line 65
    const v2, 0x7f040001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/chatman/o_/ChatmanSoundboard;->soundFiles:[Ljava/lang/String;

    .line 66
    const/high16 v2, 0x7f040000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const v1, "Choose Theme..."

    iput-object v2, p0, Lcom/chatman/o_/ChatmanSoundboard;->soundNames:[Ljava/lang/String;

    .line 69
    const v2, 0x7f040002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/chatman/o_/ChatmanSoundboard;->themes:[Ljava/lang/String;

    .line 70
    invoke-virtual {p0, v6}, Lcom/chatman/o_/ChatmanSoundboard;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "theme"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/chatman/o_/ChatmanSoundboard;->currTheme:I

    .line 73
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    .line 74
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/chatman/o_/ChatmanSoundboard;->soundNames:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 73
    iput-object v2, p0, Lcom/chatman/o_/ChatmanSoundboard;->adp:Landroid/widget/ArrayAdapter;

    .line 75
    invoke-virtual {p0, v6}, Lcom/chatman/o_/ChatmanSoundboard;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "shutup_unlocked"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/chatman/o_/ChatmanSoundboard;->themes:[Ljava/lang/String;

    iget v3, p0, Lcom/chatman/o_/ChatmanSoundboard;->currTheme:I

    aget-object v2, v2, v3

    const-string v3, "Picard"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/chatman/o_/ChatmanSoundboard;->adp:Landroid/widget/ArrayAdapter;

    const-string v3, "SHUT UP, MENSLY"

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 79
    :cond_0
    iget-object v2, p0, Lcom/chatman/o_/ChatmanSoundboard;->adp:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v2}, Lcom/chatman/o_/ChatmanSoundboard;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    invoke-virtual {p0}, Lcom/chatman/o_/ChatmanSoundboard;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 81
    .local v0, "lv":Landroid/widget/ListView;
    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 83
    new-instance v2, Lcom/chatman/o_/ChatmanSoundboard$2;

    invoke-direct {v2, p0}, Lcom/chatman/o_/ChatmanSoundboard$2;-><init>(Lcom/chatman/o_/ChatmanSoundboard;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 99
    const-string v2, "sensor"

    invoke-virtual {p0, v2}, Lcom/chatman/o_/ChatmanSoundboard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/chatman/o_/ChatmanSoundboard;->mSensorManager:Landroid/hardware/SensorManager;

    .line 100
    iget-object v2, p0, Lcom/chatman/o_/ChatmanSoundboard;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/chatman/o_/ChatmanSoundboard;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/chatman/o_/ChatmanSoundboard;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 101
    const/4 v2, 0x0

    iput v2, p0, Lcom/chatman/o_/ChatmanSoundboard;->mAccel:F

    .line 102
    iput v7, p0, Lcom/chatman/o_/ChatmanSoundboard;->mAccelCurrent:F

    .line 103
    iput v7, p0, Lcom/chatman/o_/ChatmanSoundboard;->mAccelLast:F

    .line 104
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/chatman/o_/ChatmanSoundboard;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 153
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f050000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 154
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 159
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 164
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 161
    :pswitch_0
    invoke-direct {p0}, Lcom/chatman/o_/ChatmanSoundboard;->chooseTheme()V

    .line 162
    const/4 v0, 0x1

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x7f060000
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 210
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 211
    iget-object v0, p0, Lcom/chatman/o_/ChatmanSoundboard;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/chatman/o_/ChatmanSoundboard;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/chatman/o_/ChatmanSoundboard;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 212
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/chatman/o_/ChatmanSoundboard;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/chatman/o_/ChatmanSoundboard;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 217
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 218
    return-void
.end method
