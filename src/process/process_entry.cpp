#include <QIcon>

#include "process_entry.h"
#include "utils.h"

using namespace Utils;

class ProcessEntryData : public QSharedData
{
public:
    ProcessEntryData() {}
    ProcessEntryData(const ProcessEntryData &other)
        : QSharedData(other)
        , m_pid {other.m_pid}
        , m_priority {other.m_priority}
        , m_state {other.m_state}
        , m_cpu {other.m_cpu}
        , m_icon {other.m_icon}
        , m_name {other.m_name}
        , m_displayName {other.m_displayName}
        , m_userName {other.m_userName}
        , m_memory {other.m_memory}
        , m_shm {other.m_shm}
        , m_diskStats {other.m_diskStats}
        , m_networkStats {other.m_networkStats}
    {
    }
    ProcessEntryData &operator=(const ProcessEntryData &other)
    {
        Q_UNUSED(padding);
        if (this != &other) {
            m_pid = other.m_pid;
            m_priority = other.m_priority;
            m_state = other.m_state;
            m_cpu = other.m_cpu;
            m_icon = other.m_icon;
            m_name = other.m_name;
            m_displayName = other.m_displayName;
            m_userName = other.m_userName;
            m_memory = other.m_memory;
            m_shm = other.m_shm;
            m_diskStats = other.m_diskStats;
            m_networkStats = other.m_networkStats;
        }
        return *this;
    }
    ~ProcessEntryData() {}

    friend class ProcessEntry;

private:
    // pid
    pid_t m_pid {0};
    // pirority
    int m_priority {0};
    // process status
    char m_state {};
    char padding[3];
    // cpu -> default(descending)
    qreal m_cpu {.0};
    // icon
    QIcon m_icon {};
    // process name
    QString m_name {};
    // displayName
    QString m_displayName {};
    // uid
    QString m_userName {};
    // mem
    qulonglong m_memory {0};
    // shared memory
    qulonglong m_shm {0};
    // disk read/write stats
    DiskStatus m_diskStats {};
    // network up/down stats
    NetworkStatus m_networkStats {};
};

ProcessEntry::ProcessEntry()
    : data(new ProcessEntryData)
{
}

ProcessEntry::ProcessEntry(const ProcessEntry &rhs)
    : data(rhs.data)
{
}

ProcessEntry &ProcessEntry::operator=(const ProcessEntry &rhs)
{
    if (this != &rhs)
        data.operator = (rhs.data);
    return *this;
}

ProcessEntry::~ProcessEntry() {}

pid_t ProcessEntry::getPID() const
{
    return data->m_pid;
}

void ProcessEntry::setPID(pid_t pid)
{
    data->m_pid = pid;
}

int ProcessEntry::getPriority() const
{
    return data->m_priority;
}

void ProcessEntry::setPriority(int priority)
{
    data->m_priority = priority;
}

char ProcessEntry::getState() const
{
    return data->m_state;
}

void ProcessEntry::setState(char state)
{
    data->m_state = state;
}

qreal ProcessEntry::getCPU() const
{
    return data->m_cpu;
}

void ProcessEntry::setCPU(qreal cpu)
{
    data->m_cpu = cpu;
}

QIcon ProcessEntry::getIcon() const
{
    return data->m_icon;
}

void ProcessEntry::setIcon(const QIcon &icon)
{
    data->m_icon = icon;
}

QString ProcessEntry::getName() const
{
    return data->m_name;
}

void ProcessEntry::setName(const QString &name)
{
    data->m_name = name;
}

QString ProcessEntry::getDisplayName() const
{
    return data->m_displayName;
}

void ProcessEntry::setDisplayName(const QString &displayName)
{
    data->m_displayName = displayName;
}

QString ProcessEntry::getUserName() const
{
    return data->m_userName;
}

void ProcessEntry::setUserName(const QString &userName)
{
    data->m_userName = userName;
}

qulonglong ProcessEntry::getMemory() const
{
    return data->m_memory;
}

void ProcessEntry::setMemory(qulonglong memory)
{
    data->m_memory = memory;
}

qulonglong ProcessEntry::getSharedMemory() const
{
    return data->m_shm;
}

void ProcessEntry::setSharedMemory(qulonglong shm)
{
    data->m_shm = shm;
}

qreal ProcessEntry::getDiskRead() const
{
    return data->m_diskStats.readKbs;
}

void ProcessEntry::setDiskRead(qreal diskRead)
{
    data->m_diskStats.readKbs = diskRead;
}

qreal ProcessEntry::getDiskWrite() const
{
    return data->m_diskStats.writeKbs;
}

void ProcessEntry::setDiskWrite(qreal diskWrite)
{
    data->m_diskStats.writeKbs = diskWrite;
}

void ProcessEntry::setDiskStats(const DiskStatus &stats)
{
    data->m_diskStats = stats;
}

qulonglong ProcessEntry::getSentBytes() const
{
    return data->m_networkStats.sentBytes;
}

void ProcessEntry::setSentBytes(qulonglong sentBytes)
{
    data->m_networkStats.sentBytes = sentBytes;
}

qulonglong ProcessEntry::getRecvBytes() const
{
    return data->m_networkStats.recvBytes;
}

void ProcessEntry::setRecvBytes(qulonglong recvBytes)
{
    data->m_networkStats.recvBytes = recvBytes;
}

qreal ProcessEntry::getSentKbs() const
{
    return data->m_networkStats.sentKbs;
}

void ProcessEntry::setSentKbs(qreal sentKbs)
{
    data->m_networkStats.sentKbs = sentKbs;
}

qreal ProcessEntry::getRecvKbs() const
{
    return data->m_networkStats.recvKbs;
}

void ProcessEntry::setRecvKbs(qreal recvKbs)
{
    data->m_networkStats.recvKbs = recvKbs;
}

void ProcessEntry::setNetworkStats(const NetworkStatus stats)
{
    data->m_networkStats = stats;
}

bool ProcessEntry::operator<(const ProcessEntry &other) const
{
    return data < other.data;
}
